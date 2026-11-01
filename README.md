# Harmoney VPN

<p align="center">
  <strong>A modern community VPN client for Android, Windows, and Linux.</strong><br>
  Find a route, connect, and manage your session from one clear interface.
</p>

<p align="center">
  <a href="https://github.com/MilMit/Harmoney-VPN/actions/workflows/public-edition.yml"><img src="https://github.com/MilMit/Harmoney-VPN/actions/workflows/public-edition.yml/badge.svg?branch=main" alt="Community build status"></a>
  <a href="LICENSE"><img src="https://img.shields.io/github/license/MilMit/Harmoney-VPN" alt="MIT License"></a>
</p>

Harmoney VPN is the public source edition of Harmoney. It brings server discovery, connection controls, and subscription management together across desktop and mobile. The community build includes **Harmoney Smart** and **FireTunnel**. **Harmoney Pro** is distributed separately.

## Highlights

- **A consistent connection experience** across Android, Windows, and Linux.
- **Android quick controls:** an ongoing VPN notification with connection status, elapsed time, and a disconnect action, plus a home-screen widget.
- **Windows system tray:** check connection status, connect or disconnect, choose a server, and open the app from the notification area.
- **Linux system tray:** manage the connection from the desktop panel and receive connection and subscription notifications.
- **Localized interface** with support for Persian and other app languages.

## Build from source

Install Flutter and the toolchain for the platform you are building. Build each desktop target on its matching operating system.

```sh
cd apps/flutter
flutter pub get
```

Then build the desired target:

```sh
flutter build apk --release       # Android
flutter build windows --release   # Windows
flutter build linux --release     # Linux
```

Linux builds require GTK 3 and Ayatana AppIndicator development packages. On Ubuntu:

```sh
sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev libayatana-appindicator3-dev liblzma-dev libstdc++-12-dev
```

## Harmoney Pro download link

When a Pro release page is available, pass its URL at build time:

```sh
flutter build apk --dart-define=HARMONEY_PRO_DOWNLOAD_URL=https://github.com/OWNER/REPOSITORY/releases/latest
```

If the value is not configured, the app explains that the download link is unavailable.

## License

This project is licensed under the MIT License. Third-party components may have separate terms; see the notices included with their source.
