# Harmoney Community

Public Flutter app for Android, Linux and Windows. The provider picker includes
Harmoney Smart and Firefox VPN. Harmoney Pro is a separate download and its
protocol implementation is not included in this source edition.

## Run

From this directory:

```sh
flutter pub get
flutter run
```

Build for Android, Linux or Windows with the matching Flutter desktop toolchain.
Set the Harmoney Pro download page at build time when it is published:

```sh
flutter build apk --dart-define=HARMONEY_PRO_DOWNLOAD_URL=https://example.com/releases
```
