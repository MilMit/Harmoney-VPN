#include "flutter_window.h"

#include <shellapi.h>
#include <windows.h>
#include <flutter/standard_method_codec.h>

#include <string>
#include <optional>
#include <variant>

#include "flutter/generated_plugin_registrant.h"
#include "resource.h"

namespace {
constexpr UINT kTrayMessage = WM_APP + 41;
constexpr UINT kTrayOpen = 41001;
constexpr UINT kTrayToggle = 41002;
constexpr UINT kTrayServers = 41003;
constexpr UINT kTrayExit = 41004;
constexpr UINT kTrayIconId = 1;
}  // namespace

FlutterWindow::FlutterWindow(const flutter::DartProject& project,
                             bool show_window)
    : project_(project), show_window_(show_window) {}

FlutterWindow::~FlutterWindow() {}

bool FlutterWindow::OnCreate() {
  if (!Win32Window::OnCreate()) {
    return false;
  }

  RECT frame = GetClientArea();

  // The size here must match the window dimensions to avoid unnecessary surface
  // creation / destruction in the startup path.
  flutter_controller_ = std::make_unique<flutter::FlutterViewController>(
      frame.right - frame.left, frame.bottom - frame.top, project_);
  // Ensure that basic setup of the controller was successful.
  if (!flutter_controller_->engine() || !flutter_controller_->view()) {
    return false;
  }
  RegisterPlugins(flutter_controller_->engine());
  tray_channel_ = std::make_unique<flutter::MethodChannel<flutter::EncodableValue>>(
      flutter_controller_->engine()->messenger(), "io.harmoney.client/windows_tray",
      &flutter::StandardMethodCodec::GetInstance());
  tray_channel_->SetMethodCallHandler(
      [this](const flutter::MethodCall<flutter::EncodableValue>& call,
             std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result) {
        if (call.method_name() == "updateState") {
          const auto* value = std::get_if<std::string>(call.arguments());
          if (value != nullptr) {
            tray_connected_ = value->rfind("connected|", 0) == 0;
            const auto separator = value->find('|');
            if (separator != std::string::npos) {
              const auto name = value->substr(separator + 1);
              tray_server_.assign(name.begin(), name.end());
            }
            UpdateTrayTooltip();
          }
          result->Success();
          return;
        }
        result->NotImplemented();
      });
  SetChildContent(flutter_controller_->view()->GetNativeWindow());
  if (show_window_) AddTrayIcon();

  flutter_controller_->engine()->SetNextFrameCallback([&]() {
    if (show_window_) this->Show();
  });

  // Flutter can complete the first frame before the "show window" callback is
  // registered. The following call ensures a frame is pending to ensure the
  // window is shown. It is a no-op if the first frame hasn't completed yet.
  flutter_controller_->ForceRedraw();

  return true;
}

void FlutterWindow::OnDestroy() {
  RemoveTrayIcon();
  tray_channel_.reset();
  if (flutter_controller_) {
    flutter_controller_ = nullptr;
  }

  Win32Window::OnDestroy();
}

LRESULT
FlutterWindow::MessageHandler(HWND hwnd, UINT const message,
                              WPARAM const wparam,
                              LPARAM const lparam) noexcept {
  // Give Flutter, including plugins, an opportunity to handle window messages.
  if (flutter_controller_) {
    std::optional<LRESULT> result =
        flutter_controller_->HandleTopLevelWindowProc(hwnd, message, wparam,
                                                      lparam);
    if (result) {
      return *result;
    }
  }

  switch (message) {
    case WM_CLOSE:
      if (!tray_exiting_) {
        ShowWindow(hwnd, SW_HIDE);
        return 0;
      }
      break;
    case kTrayMessage:
      if (HIWORD(lparam) == NIN_SELECT || HIWORD(lparam) == NIN_KEYSELECT) {
        Show();
        SetForegroundWindow(hwnd);
        InvokeTrayAction("openApp");
      } else if (HIWORD(lparam) == WM_CONTEXTMENU) {
        ShowTrayMenu();
      }
      return 0;
    case WM_COMMAND:
      switch (LOWORD(wparam)) {
        case kTrayOpen:
          Show();
          SetForegroundWindow(hwnd);
          InvokeTrayAction("openApp");
          return 0;
        case kTrayToggle:
          InvokeTrayAction("toggleConnection");
          return 0;
        case kTrayServers:
          Show();
          SetForegroundWindow(hwnd);
          InvokeTrayAction("openServers");
          return 0;
        case kTrayExit:
          tray_exiting_ = true;
          DestroyWindow(hwnd);
          return 0;
      }
      break;
    case WM_FONTCHANGE:
      flutter_controller_->engine()->ReloadSystemFonts();
      break;
  }

  return Win32Window::MessageHandler(hwnd, message, wparam, lparam);
}

void FlutterWindow::AddTrayIcon() {
  tray_icon_ = {};
  tray_icon_.cbSize = sizeof(NOTIFYICONDATA);
  tray_icon_.hWnd = GetHandle();
  tray_icon_.uID = kTrayIconId;
  tray_icon_.uFlags = NIF_MESSAGE | NIF_ICON | NIF_TIP;
  tray_icon_.uCallbackMessage = kTrayMessage;
  tray_icon_.hIcon = LoadIcon(GetModuleHandle(nullptr), MAKEINTRESOURCE(IDI_APP_ICON));
  wcscpy_s(tray_icon_.szTip, L"Harmoney VPN");
  Shell_NotifyIcon(NIM_ADD, &tray_icon_);
  tray_icon_.uVersion = NOTIFYICON_VERSION_4;
  Shell_NotifyIcon(NIM_SETVERSION, &tray_icon_);
}

void FlutterWindow::RemoveTrayIcon() {
  if (tray_icon_.hWnd != nullptr) Shell_NotifyIcon(NIM_DELETE, &tray_icon_);
  tray_icon_.hWnd = nullptr;
}

void FlutterWindow::UpdateTrayTooltip() {
  if (tray_icon_.hWnd == nullptr) return;
  const std::wstring state = tray_connected_ ? L"Connected" : L"Disconnected";
  const std::wstring tooltip = L"Harmoney VPN - " + state + L" - " + tray_server_;
  wcsncpy_s(tray_icon_.szTip, tooltip.c_str(), _TRUNCATE);
  tray_icon_.uFlags = NIF_TIP;
  Shell_NotifyIcon(NIM_MODIFY, &tray_icon_);
}

void FlutterWindow::ShowTrayMenu() {
  HMENU menu = CreatePopupMenu();
  if (menu == nullptr) return;
  AppendMenu(menu, MF_STRING, kTrayOpen, L"Open Harmoney");
  AppendMenu(menu, MF_STRING, kTrayToggle,
             tray_connected_ ? L"Disconnect" : L"Connect");
  AppendMenu(menu, MF_STRING, kTrayServers, L"Choose server...");
  AppendMenu(menu, MF_SEPARATOR, 0, nullptr);
  AppendMenu(menu, MF_STRING, kTrayExit, L"Exit");
  POINT point{};
  GetCursorPos(&point);
  SetForegroundWindow(GetHandle());
  TrackPopupMenu(menu, TPM_RIGHTBUTTON | TPM_BOTTOMALIGN | TPM_LEFTALIGN,
                 point.x, point.y, 0, GetHandle(), nullptr);
  PostMessage(GetHandle(), WM_NULL, 0, 0);
  DestroyMenu(menu);
}

void FlutterWindow::InvokeTrayAction(const char* method) {
  if (tray_channel_ == nullptr) return;
  tray_channel_->InvokeMethod(method,
      std::make_unique<flutter::EncodableValue>());
}
