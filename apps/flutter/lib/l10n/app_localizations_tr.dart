// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Harmoney VPN';

  @override
  String get splashSubtitle =>
      'Güvenli internet erişimi için tasarlandı,\nherkes için, her yerde';

  @override
  String get connect => 'Bağlan';

  @override
  String get disconnect => 'Bağlantıyı Kes';

  @override
  String get connected => 'Bağlandı';

  @override
  String get disconnected => 'Bağlantı Kesildi';

  @override
  String get connecting => 'Bağlanıyor';

  @override
  String connectingVia(String groupName) {
    return '$groupName üzerinden bağlanılıyor';
  }

  @override
  String get switchingMethod => 'YÖNTEM DEĞİŞTİRİLİYOR';

  @override
  String get speedTest => 'Hız Testi';

  @override
  String get download => 'İNDİRME';

  @override
  String get upload => 'YÜKLEME';

  @override
  String get ping => 'PİNG';

  @override
  String get latency => 'GECİKME';

  @override
  String get jitter => 'DALGALANMA';

  @override
  String get packetLoss => 'PAKET KAYBI';

  @override
  String get tapHere => 'BURAYA DOKUNUN';

  @override
  String get settings => 'Ayarlar';

  @override
  String get introduction => 'Giriş';

  @override
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get termsAndConditions => 'Şartlar ve Koşullar';

  @override
  String get ourWebsite => 'Web Sitemiz';

  @override
  String get marketplace => 'Pazar Yeri';

  @override
  String get telegramBot => 'Telegram Botu';

  @override
  String get sourceCode => 'Kaynak Kodu';

  @override
  String get openSourceLicenses => 'Açık Kaynak Lisansları';

  @override
  String get betaCommunity => 'Beta Topluluğu';

  @override
  String get close => 'Kapat';

  @override
  String get copyLogs => 'Günlükleri Kopyala';

  @override
  String get logsCopied => 'Günlükler panoya kopyalandı';

  @override
  String get appLogs => 'Uygulama Günlükleri';

  @override
  String get autoRefresh => 'Otomatik Yenile';

  @override
  String get clear => 'Temizle';

  @override
  String get quickMenu => 'Hızlı Menü';

  @override
  String get noInternet => 'İnternet Yok';

  @override
  String get error => 'Hata';

  @override
  String get loading => 'Yükleniyor';

  @override
  String get analyzing => 'Analiz Ediliyor';

  @override
  String get mbps => 'Mbps';

  @override
  String get ms => 'ms';

  @override
  String get language => 'Dil';

  @override
  String get tips => 'İPUÇLARI';

  @override
  String get english => 'İngilizce';

  @override
  String get chinese => '中文 (Çince)';

  @override
  String get gotIt => 'Anladım';

  @override
  String get learnMore => 'DAHA FAZLA BİLGİ EDİNİN';

  @override
  String get harmoneyGoal =>
      'Harmoney\'nin amacı, kamuya açık bilgilere güvenli erişim sağlamak ve ücretsiz bir tarama deneyimi sağlamaktır.';

  @override
  String get statusIsChilling => 'tüyler ürpertici.';

  @override
  String get statusIs => ',';

  @override
  String get statusFailed => 'başarısız oldu.';

  @override
  String get statusHas => '';

  @override
  String get statusIsReturning => ',';

  @override
  String get statusToStandbyMode => '\'yi bekleme moduna döndürüyor.';

  @override
  String get statusPluggingIn => 'takılıyor ...';

  @override
  String get statusPoweredUp => 'çalıştırılıyor';

  @override
  String get statusDoingScience => 'bilim yapıyorum...';

  @override
  String get statusExitedMatrix => '';

  @override
  String get statusSorry => 'matrisinden çıktık özür dileriz :(';

  @override
  String get statusConnectAlready => 'Zaten bağlanın';

  @override
  String get statusTestingSpeed => 'test hızı...';

  @override
  String get statusIsReady => 'hazır';

  @override
  String get statusIsInTrouble => '\'nin başı dertte.';

  @override
  String get statusDXcoreDown => 'DXcore aşağı.';

  @override
  String get statusToSpeedTest => 'hız testi için';

  @override
  String get statusYoursToShape => 'sizin şekillendirmeniz için';

  @override
  String get settingsConnectionMethod => 'BAĞLANTI YÖNTEMİ';

  @override
  String get settingsEscapeMode => 'KAÇIŞ MODU';

  @override
  String get settingsDestination => 'HEDEF';

  @override
  String get settingsSplitTunnel => 'Bölünmüş Tünel';

  @override
  String get settingsKillSwitch => 'Acil Durum Kesicisi';

  @override
  String get settingsDeepScan => 'DERİN TARAMA';

  @override
  String get settingsHealthCheck => 'SAĞLIK KONTROLÜ';

  @override
  String get settingsIncluded => 'DAHİL';

  @override
  String get settingsAtLeastOneCoreRequired =>
      'En az bir çekirdek etkin kalmalıdır';

  @override
  String get settingsResetToDefault => 'RESET';

  @override
  String get offlineFlowlineMessage =>
      'Çevrimdışı sürüm şu anda kullanıldığından Flowline güncellemeleri duraklatıldı.';

  @override
  String get offlineFlowlineUndo => 'GERİ AL';

  @override
  String get updateAvailable => 'Güncelleme mevcut';

  @override
  String get updateRequired => 'Güncelleme gerekli';

  @override
  String get updateOptionalMessage =>
      'Uygulamadan en iyi şekilde yararlanmak ve en son iyileştirmelerin keyfini çıkarmak için lütfen en yeni sürüme güncelleyin.';

  @override
  String get updateRequiredMessage =>
      'Harmoney\'yi kullanmaya devam etmek için lütfen en son sürüme güncelleyin. Bu güncelleme kritik iyileştirmeler içerir ve uygulamanın işlevselliği için gereklidir.';

  @override
  String get updateNow => 'Şimdi güncelle';

  @override
  String get notNow => 'Şimdi değil';

  @override
  String get updateMethods => 'Güncelleme Yöntemleri';

  @override
  String get importConfig => 'Yapılandırmayı İçe Aktar';

  @override
  String get synchronization => 'Senkronizasyon';

  @override
  String get settingsDonation => 'Bağış';

  @override
  String get settingsDonationDescription =>
      'Dijital sansürün ve internet filtrelemenin duvarlarını yıkmamıza yardımcı olun.';

  @override
  String get authenticationRequired => 'Kimlik Doğrulaması Gerekli';

  @override
  String get premiumLoginDescription =>
      'Premium aboneliklerinize erişmek için, Harmoney web sitesi aracılığıyla oturum açmanız veya bir hesap oluşturmanız gerekir.';

  @override
  String get email => 'E-posta';

  @override
  String get emailHint => 'example@domain.com';

  @override
  String get emailValidation => 'Lütfen e-posta adresinizi girin';

  @override
  String get password => 'Şifre';

  @override
  String get passwordHint => 'Şifrenizi girin';

  @override
  String get passwordValidation => 'Lütfen şifrenizi girin';

  @override
  String get passwordMinLength => 'Şifre en az 6 karakterden oluşmalıdır';

  @override
  String get login => 'Giriş Yap';

  @override
  String get noAccount => 'Hesabınız yok mu?';

  @override
  String get signUp => 'Kayıt ol';

  @override
  String get loginFailed =>
      'Giriş başarısız oldu. Lütfen kimlik bilgilerinizi kontrol edip tekrar deneyin.';

  @override
  String get loginSuccess => 'Giriş başarılı!';

  @override
  String get code => 'Kodu';

  @override
  String get codeHint => 'Erişim kodunuzu giriniz';

  @override
  String get codeValidation => 'Lütfen kodunuzu giriniz';

  @override
  String get premiumLoginByCodeDescription =>
      'Premium aboneliklerinize erişmek için size verilen erişim kodunu girin.';

  @override
  String get havingTrouble => 'Sorun mu yaşıyorsunuz?';

  @override
  String get signedInAs => 'Şu anda';

  @override
  String get premiumImportDescription =>
      'e-posta adresiyle oturum açmış durumdasınız. Premium abonelikleriniz internet kısıtlamaları nedeniyle yüklenemiyorsa ve mevcut yöntemleri kullanarak bağlanamıyorsanız Marketplace\'ten aldığınız dosyayı uygulamaya aktarabilirsiniz.';

  @override
  String get planningToExit => 'Çıkmayı mı planlıyorsunuz?';

  @override
  String get signOut => 'Çıkış Yap';

  @override
  String get signOutSuccess => 'Başarıyla çıkış yapıldı!';

  @override
  String get settingsMarketplace => 'Pazaryeri';

  @override
  String get marketplaceDescription =>
      'Güvenilir tedarikçilerden gelen güvenli VPN yapılandırmalarına göz atın.';

  @override
  String get loggedIn => 'OTURUM AÇTI';

  @override
  String get loginOrRegister => 'OTURUM AÇIN VEYA KAYIT OLUN';

  @override
  String get loginByCode => 'Kodla giriş yapın';

  @override
  String get backToLoginByEmail => 'E-postayla girişe geri dönün';

  @override
  String get connectionRequired => 'Bağlantı Gerekli';

  @override
  String get connectionRequiredDescription =>
      'Güvenli bir giriş veya kayıt işlemini tamamlamak için, öncelikle mevcut bağlantı yöntemlerinden birini kullanarak bir bağlantı kurmalısınız.';
}
