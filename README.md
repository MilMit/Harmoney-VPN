# Harmoney Community

Public source edition of Harmoney. The provider picker includes Harmoney Smart
and FireTunnel. Harmoney Pro is offered as a separate download from the
connection screen.

## Build

The Flutter application is in `apps/flutter`:

```powershell
cd apps/flutter
flutter pub get
flutter run
```

## Connection controls and notifications

- **Android:** an ongoing VPN notification shows connection status and elapsed time, with a disconnect action. A home-screen widget provides a quick connection toggle and status.
- **Windows:** the notification-area icon shows connection status and opens a quick menu for connecting, disconnecting, choosing a server, or opening the app. Connection changes and subscription events use desktop notifications.
- **Linux:** the system-tray menu provides connection controls and status. Desktop notifications report connection changes and subscription events. Linux builds need GTK 3 and Ayatana AppIndicator development packages.

Set the Harmoney Pro release page at build time when it is available:

```powershell
flutter build apk --dart-define=HARMONEY_PRO_DOWNLOAD_URL=https://github.com/OWNER/REPO/releases/latest
```

The download URL defaults to empty until the official Pro release page is available. Configure it with the `HARMONEY_PRO_DOWNLOAD_URL` build define; otherwise the app explains that the link is not available yet.

