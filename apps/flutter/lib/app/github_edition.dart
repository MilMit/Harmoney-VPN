/// Build constants for the public source edition.
///
/// Configure the release page at build time once it is published.
abstract final class GithubEdition {
  static const harmoneyProDownloadUrl = String.fromEnvironment(
    'HARMONEY_PRO_DOWNLOAD_URL',
    defaultValue: '',
  );

  static bool get hasHarmoneyProDownload =>
      harmoneyProDownloadUrl.trim().isNotEmpty;

  static const allowedProviders = <String>{'harmoney', 'firetunnel'};
}
