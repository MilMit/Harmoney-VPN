/// Build constants for the public source edition.
///
/// The public platform-aware Harmoney Pro download page.
abstract final class GithubEdition {
  static const harmoneyProDownloadUrl = String.fromEnvironment(
    'HARMONEY_PRO_DOWNLOAD_URL',
    defaultValue: 'https://harmoney-pro-download.candidberry8.chatgpt.site',
  );

  static bool get hasHarmoneyProDownload =>
      harmoneyProDownloadUrl.trim().isNotEmpty;

  static const allowedProviders = <String>{'harmoney', 'firetunnel'};
}
