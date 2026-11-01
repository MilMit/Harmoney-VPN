// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Harmoney VPN';

  @override
  String get splashSubtitle =>
      'Entwickelt für sicheren Internetzugang,\nfür jeden, überall';

  @override
  String get connect => 'Verbinden';

  @override
  String get disconnect => 'Trennen';

  @override
  String get connected => 'Verbunden';

  @override
  String get disconnected => 'Getrennt';

  @override
  String get connecting => 'Verbinde';

  @override
  String connectingVia(String groupName) {
    return 'Verbindung über $groupName';
  }

  @override
  String get switchingMethod => 'METHODE WECHSELN';

  @override
  String get speedTest => 'Geschwindigkeitstest';

  @override
  String get download => 'DOWNLOAD';

  @override
  String get upload => 'UPLOAD';

  @override
  String get ping => 'PING';

  @override
  String get latency => 'LATENZ';

  @override
  String get jitter => 'JITTER';

  @override
  String get packetLoss => 'PAKETVERLUST';

  @override
  String get tapHere => 'HIER TIPPEN';

  @override
  String get settings => 'Einstellungen';

  @override
  String get introduction => 'Einführung';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get termsAndConditions => 'Allgemeine Geschäftsbedingungen';

  @override
  String get ourWebsite => 'Unsere Website';

  @override
  String get marketplace => 'Marktplatz';

  @override
  String get telegramBot => 'Telegram-Bot';

  @override
  String get sourceCode => 'Quellcode';

  @override
  String get openSourceLicenses => 'Open-Source-Lizenzen';

  @override
  String get betaCommunity => 'Beta-Community';

  @override
  String get close => 'Schließen';

  @override
  String get copyLogs => 'Protokolle kopieren';

  @override
  String get logsCopied => 'Protokolle in Zwischenablage kopiert';

  @override
  String get appLogs => 'App-Protokolle';

  @override
  String get autoRefresh => 'Auto-Aktualisierung';

  @override
  String get clear => 'Löschen';

  @override
  String get quickMenu => 'Schnellmenü';

  @override
  String get noInternet => 'Kein Internet';

  @override
  String get error => 'Fehler';

  @override
  String get loading => 'Laden';

  @override
  String get analyzing => 'Analysieren';

  @override
  String get mbps => 'Mbps';

  @override
  String get ms => 'ms';

  @override
  String get language => 'Sprache';

  @override
  String get tips => 'TIPPS';

  @override
  String get english => 'Englisch';

  @override
  String get chinese => '中文 (Chinesisch)';

  @override
  String get gotIt => 'Verstanden';

  @override
  String get learnMore => 'WEITERE INFORMATIONEN';

  @override
  String get harmoneyGoal =>
      'Das Ziel von Harmoney besteht darin, einen sicheren Zugriff auf öffentliche Informationen zu gewährleisten und ein kostenloses Surferlebnis zu bieten.';

  @override
  String get statusIsChilling => 'ist gruselig.';

  @override
  String get statusIs => 'ist';

  @override
  String get statusFailed => 'fehlgeschlagen.';

  @override
  String get statusHas => 'hat';

  @override
  String get statusIsReturning => 'kehrt zurück';

  @override
  String get statusToStandbyMode => 'in den Standby-Modus.';

  @override
  String get statusPluggingIn => 'wird angeschlossen ...';

  @override
  String get statusPoweredUp => 'wird eingeschaltet';

  @override
  String get statusDoingScience => 'macht Wissenschaft ...';

  @override
  String get statusExitedMatrix => 'Matrix verlassen';

  @override
  String get statusSorry => 'Es tut uns leid :(';

  @override
  String get statusConnectAlready => 'Verbindung bereits hergestellt';

  @override
  String get statusTestingSpeed => 'Geschwindigkeit testen ...';

  @override
  String get statusIsReady => 'ist bereit';

  @override
  String get statusIsInTrouble => 'ist in Schwierigkeiten.';

  @override
  String get statusDXcoreDown => 'DXcore heruntergefahren.';

  @override
  String get statusToSpeedTest => 'zum Geschwindigkeitstest';

  @override
  String get statusYoursToShape => 'Ihre Gestaltung';

  @override
  String get settingsConnectionMethod => 'VERBINDUNGSMETHODE';

  @override
  String get settingsEscapeMode => 'ESCAPE-MODUS';

  @override
  String get settingsDestination => 'ZIEL';

  @override
  String get settingsSplitTunnel => 'Split-Tunneling';

  @override
  String get settingsKillSwitch => 'Notschalter';

  @override
  String get settingsDeepScan => 'DEEP SCAN';

  @override
  String get settingsHealthCheck => 'HEALTH CHECK';

  @override
  String get settingsIncluded => 'ENTHALTEN';

  @override
  String get settingsAtLeastOneCoreRequired =>
      'Mindestens ein Kern muss aktiviert bleiben.';

  @override
  String get settingsResetToDefault => 'ZURÜCKSETZEN';

  @override
  String get offlineFlowlineMessage =>
      'Flowline Aktualisierungen wurden angehalten, da derzeit die Offline-Version verwendet wird.';

  @override
  String get offlineFlowlineUndo => 'UNDO';

  @override
  String get updateAvailable => 'Update verfügbar';

  @override
  String get updateRequired => 'Update erforderlich';

  @override
  String get updateOptionalMessage =>
      'Um die App optimal zu nutzen und in den Genuss der neuesten Verbesserungen zu kommen, aktualisieren Sie bitte auf die neueste Version.';

  @override
  String get updateRequiredMessage =>
      'Um Harmoney weiterhin verwenden zu können, aktualisieren Sie bitte auf die neueste Version. Dieses Update enthält wichtige Verbesserungen und ist für die App-Funktionalität erforderlich.';

  @override
  String get updateNow => 'Jetzt aktualisieren';

  @override
  String get notNow => 'Nicht jetzt';

  @override
  String get updateMethods => 'Aktualisierungsmethoden';

  @override
  String get importConfig => 'Konfiguration importieren';

  @override
  String get synchronization => 'Synchronisierung';

  @override
  String get settingsDonation => 'Spende';

  @override
  String get settingsDonationDescription =>
      'Helfen Sie uns, die Mauern der digitalen Zensur und Internetfilterung einzureißen.';

  @override
  String get authenticationRequired => 'Authentifizierung erforderlich';

  @override
  String get premiumLoginDescription =>
      'Um auf Ihr(e) Premium-Abonnement(s) zuzugreifen, müssen Sie sich über die Harmoney-Website anmelden oder ein Konto erstellen.';

  @override
  String get email => 'E-Mail';

  @override
  String get emailHint => 'example@domain.com';

  @override
  String get emailValidation => 'Bitte geben Sie Ihre E-Mail-Adresse ein.';

  @override
  String get password => 'Passwort.';

  @override
  String get passwordHint => '. Geben Sie Ihr Passwort ein.';

  @override
  String get passwordValidation => '. Bitte geben Sie Ihr Passwort ein';

  @override
  String get passwordMinLength =>
      'Das Passwort muss mindestens 6 Zeichen lang sein.';

  @override
  String get login => 'Anmelden';

  @override
  String get noAccount => 'Sie haben noch kein Konto?';

  @override
  String get signUp => 'Registrieren';

  @override
  String get loginFailed =>
      'Fehler bei der Anmeldung. Bitte überprüfen Sie Ihre Anmeldedaten und versuchen Sie es erneut.';

  @override
  String get loginSuccess => 'Anmeldung erfolgreich!';

  @override
  String get code => 'Code';

  @override
  String get codeHint => 'Geben Sie Ihren Zugangscode ein';

  @override
  String get codeValidation => 'Bitte geben Sie Ihren Code';

  @override
  String get premiumLoginByCodeDescription =>
      'ein. Um auf Ihr(e) Premium-Abonnement(s) zuzugreifen, geben Sie den Ihnen zur Verfügung gestellten Zugangscode ein.';

  @override
  String get havingTrouble => 'Haben Sie Probleme?';

  @override
  String get signedInAs => 'Sie sind derzeit mit der E-Mail-Adresse angemeldet';

  @override
  String get premiumImportDescription =>
      'Wenn Ihre Premium-Abonnements aufgrund von Internetbeschränkungen nicht geladen werden können und Sie mit den verfügbaren Methoden keine Verbindung herstellen können, können Sie die vom Marktplatz erhaltene Datei in die App importieren.';

  @override
  String get planningToExit => 'Planen Sie den Ausstieg?';

  @override
  String get signOut => 'Abmelden';

  @override
  String get signOutSuccess => 'Erfolgreich abgemeldet!';

  @override
  String get settingsMarketplace => 'Marktplatz';

  @override
  String get marketplaceDescription =>
      'Durchsuchen Sie sichere VPN-Konfigurationen von vertrauenswürdigen Anbietern.';

  @override
  String get loggedIn => 'ANGEMELDET';

  @override
  String get loginOrRegister => 'LOGIN ODER REGISTRIERUNG';

  @override
  String get loginByCode => 'Anmeldung per Code';

  @override
  String get backToLoginByEmail => 'Zurück zur Anmeldung per E-Mail';

  @override
  String get connectionRequired => 'Verbindung erforderlich';

  @override
  String get connectionRequiredDescription =>
      'Um einen sicheren Anmelde- oder Registrierungsprozess abzuschließen, müssen Sie zunächst eine Verbindung mit einer der verfügbaren Verbindungsmethoden herstellen.';
}
