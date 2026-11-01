# Harmoney VPN — Community Edition

The Flutter application for the Harmoney community client on Android, Windows, and Linux. The app includes Harmoney Smart and FireTunnel; Harmoney Pro is distributed separately.

## Run locally

```sh
flutter pub get
flutter run
```

## Release builds

Build on a host with the matching platform toolchain:

```sh
flutter build apk --release       # Android
flutter build windows --release   # Windows
flutter build linux --release     # Linux
```

Linux requires GTK 3 and Ayatana AppIndicator development packages. The root README contains the full dependency command and feature overview.

## Configure the Pro download link

```sh
flutter build apk --dart-define=HARMONEY_PRO_DOWNLOAD_URL=https://github.com/OWNER/REPOSITORY/releases/latest
```

Without this define, the app displays an unavailable-link message in the Pro download card.
