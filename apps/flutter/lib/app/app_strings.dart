class AppStrings {
  const AppStrings(this.localeCode);

  final String localeCode;

  bool get isFa => localeCode == 'fa';
  bool get isRtl => localeCode == 'fa' || localeCode == 'ar';

  String get appName => 'Harmoney';

  String get aboutUs => switch (localeCode) {
    'fa' => 'درباره ما',
    'ar' => 'حول التطبيق',
    'tr' => 'Hakkımızda',
    'es' => 'Sobre nosotros',
    'fr' => 'À propos de nous',
    'de' => 'Über uns',
    'it' => 'Chi siamo',
    'ru' => 'О нас',
    'zh' => '关于我们',
    _ => 'About us',
  };

  String get aboutDescription => switch (localeCode) {
    'fa' => 'هارمونی (Harmoney) توسط MilMit توسعه یافته است؛ ابزاری فوق‌العاده امن، مدرن و پرسرعت برای دسترسی آزاد به اینترنت جهانی و دور زدن فیلترینگ.',
    'ar' => 'تم تطوير Harmoney بواسطة MilMit؛ أداة آمنة وعالية السرعة للوصول إلى الإنترنت الحر وحماية الخصوصية.',
    'tr' => 'Harmoney, MilMit tarafından geliştirilmiştir; güvenli, hızlı ve sınırsız internet erişimi sağlayan modern bir VPN çözümüdür.',
    'es' => 'Harmoney está desarrollado por MilMit; una solución moderna y ultrarrápida para acceso seguro y libre a Internet.',
    'fr' => 'Harmoney est développé par MilMit; un outil moderne et ultra-sécurisé pour un accès libre et confidentiel à Internet.',
    'de' => 'Harmoney wird von MilMit entwickelt; ein modernes, sicheres Tool für freien und geschützten Internetzugang.',
    'it' => 'Harmoney è sviluppato da MilMit; una soluzione moderna e sicura per un accesso a Internet libero e protetto.',
    'ru' => 'Harmoney разработан MilMit; это современный и безопасный инструмент для свободного доступа к интернету.',
    'zh' => 'Harmoney 由 MilMit 开发；一个安全、现代且快速的工具，用于自由畅连全球互联网。',
    _ => 'Harmoney is built by MilMit, providing a secure, high-speed, and resilient way to access the open internet.',
  };

  String get connect => switch (localeCode) {
    'fa' => 'اتصال',
    'ar' => 'اتصال',
    'tr' => 'Bağlan',
    'es' => 'Conectar',
    'fr' => 'Connecter',
    'de' => 'Verbinden',
    'it' => 'Connetti',
    'ru' => 'Подключиться',
    'zh' => '连接',
    _ => 'Connect',
  };

  String get disconnect => switch (localeCode) {
    'fa' => 'قطع اتصال',
    'ar' => 'قطع الاتصال',
    'tr' => 'Bağlantıyı Kes',
    'es' => 'Desconectar',
    'fr' => 'Déconnecter',
    'de' => 'Trennen',
    'it' => 'Disconnetti',
    'ru' => 'Отключиться',
    'zh' => '断开连接',
    _ => 'Disconnect',
  };

  String get connected => switch (localeCode) {
    'fa' => 'متصل',
    'ar' => 'متصل',
    'tr' => 'Bağlandı',
    'es' => 'Conectado',
    'fr' => 'Connecté',
    'de' => 'Verbunden',
    'it' => 'Connesso',
    'ru' => 'Подключено',
    'zh' => '已连接',
    _ => 'Connected',
  };

  String get disconnected => switch (localeCode) {
    'fa' => 'قطع شد',
    'ar' => 'غير متصل',
    'tr' => 'Bağlantı Kesildi',
    'es' => 'Desconectado',
    'fr' => 'Déconnecté',
    'de' => 'Getrennt',
    'it' => 'Disconnesso',
    'ru' => 'Отключено',
    'zh' => '已断开',
    _ => 'Disconnected',
  };

  String get locations => switch (localeCode) {
    'fa' => 'موقعیت‌ها',
    'ar' => 'المواقع',
    'tr' => 'Konumlar',
    'es' => 'Ubicaciones',
    'fr' => 'Emplacements',
    'de' => 'Standorte',
    'it' => 'Posizioni',
    'ru' => 'Локации',
    'zh' => '节点位置',
    _ => 'Locations',
  };

  String get statistics => switch (localeCode) {
    'fa' => 'سرعت و آمار',
    'ar' => 'السرعة والإحصائيات',
    'tr' => 'Hız ve İstatistik',
    'es' => 'Velocidad',
    'fr' => 'Vitesse',
    'de' => 'Geschwindigkeit',
    'it' => 'Velocità',
    'ru' => 'Скорость',
    'zh' => '测速与统计',
    _ => 'Speed',
  };

  String get splitTunnel => switch (localeCode) {
    'fa' => 'تفکیک برنامه (Split Tunnel)',
    'ar' => 'تقسيم النفق',
    'tr' => 'Bölünmüş Tünel',
    'es' => 'Túnel dividido',
    'fr' => 'Tunnel fractionné',
    'de' => 'Split-Tunneling',
    'it' => 'Split Tunneling',
    'ru' => 'Раздельное туннелирование',
    'zh' => '分流设置',
    _ => 'Split Tunnel',
  };

  String get hotspot => switch (localeCode) {
    'fa' => 'اشتراک اینترنت (هات‌اسپات)',
    'ar' => 'نقطة الاتصال',
    'tr' => 'Erişim Noktası',
    'es' => 'Punto de acceso',
    'fr' => 'Point d\'accès',
    'de' => 'Hotspot',
    'it' => 'Hotspot',
    'ru' => 'Точка доступа',
    'zh' => '热点共享',
    _ => 'Hotspot',
  };

  String get protection => switch (localeCode) {
    'fa' => 'امنیت و سپر',
    'ar' => 'الأمان والحماية',
    'tr' => 'Güvenlik',
    'es' => 'Seguridad',
    'fr' => 'Sécurité',
    'de' => 'Sicherheit',
    'it' => 'Sicurezza',
    'ru' => 'Защита',
    'zh' => '安全保护',
    _ => 'Security',
  };

  String get diagnostics => switch (localeCode) {
    'fa' => 'عیب‌یابی شبکه',
    'ar' => 'التشخيص',
    'tr' => 'Tanılama',
    'es' => 'Diagnóstico',
    'fr' => 'Diagnostic',
    'de' => 'Diagnose',
    'it' => 'Diagnostica',
    'ru' => 'Диагностика',
    'zh' => '诊断',
    _ => 'Diagnostics',
  };

  String get settings => switch (localeCode) {
    'fa' => 'تنظیمات',
    'ar' => 'الإعدادات',
    'tr' => 'Ayarlar',
    'es' => 'Ajustes',
    'fr' => 'Paramètres',
    'de' => 'Einstellungen',
    'it' => 'Impostazioni',
    'ru' => 'Настройки',
    'zh' => '设置',
    _ => 'Settings',
  };

  String get connection => switch (localeCode) {
    'fa' => 'اتصال',
    'ar' => 'الاتصال',
    'tr' => 'Bağlantı',
    'es' => 'Conexión',
    'fr' => 'Connexion',
    'de' => 'Verbindung',
    'it' => 'Connessione',
    'ru' => 'Соединение',
    'zh' => '连接',
    _ => 'Connection',
  };

  String get autoConnect => switch (localeCode) {
    'fa' => 'اتصال خودکار',
    'ar' => 'اتصال تلقائي',
    'tr' => 'Otomatik Bağlan',
    'es' => 'Conexión automática',
    'fr' => 'Connexion automatique',
    'de' => 'Automatisch verbinden',
    'it' => 'Connessione automatica',
    'ru' => 'Автоподключение',
    'zh' => '自动连接',
    _ => 'Auto-connect',
  };

  String get autoConnectSubtitle => switch (localeCode) {
    'fa' => 'اتصال هوشمند هنگام راه‌اندازی و تغییر شبکه',
    'ar' => 'الاتصال تلقائياً عند تغيير الشبكة أو بدء التشغيل',
    'tr' => 'Desteklenen ağlarda otomatik olarak bağlan',
    'es' => 'Conectar automáticamente en redes compatibles',
    'fr' => 'Se connecter automatiquement sur les réseaux compatibles',
    'de' => 'Auf unterstützten Netzwerken automatisch verbinden',
    'it' => 'Connettiti automaticamente sulle reti supportate',
    'ru' => 'Подключаться автоматически в поддерживаемых сетях',
    'zh' => '在支持的网络上自动建立连接',
    _ => 'Connect automatically on supported networks',
  };

  String get killSwitch => switch (localeCode) {
    'fa' => 'قطع اضطراری اینترنت (Kill Switch)',
    'ar' => 'مفتاح الإيقاف الطارئ',
    'tr' => 'Acil Durum Kesicisi',
    'es' => 'Interruptor de corte',
    'fr' => 'Bouton d\'arrêt d\'urgence',
    'de' => 'Kill-Switch (Notschalter)',
    'it' => 'Kill Switch',
    'ru' => 'Экстренное отключение',
    'zh' => '终止开关',
    _ => 'Kill switch',
  };

  String get killSwitchSubtitle => switch (localeCode) {
    'fa' => 'جلوگیری کامل از نشت داده در صورت قطع ناگهانی VPN',
    'ar' => 'حظر حركة المرور في حال انقطاع اتصال VPN لمنع التسريب',
    'tr' => 'VPN bağlantısı kesilirse internet erişimini tamamen durdur',
    'es' => 'Bloquear el tráfico de Internet si se cae la conexión VPN',
    'fr' => 'Bloquer tout le trafic si la connexion VPN est interrompue',
    'de' => 'Internetverkehr blockieren, falls VPN-Verbindung abbricht',
    'it' => 'Blocca il traffico Internet se la VPN si disconnette',
    'ru' => 'Блокировать интернет при обрыве соединения VPN',
    'zh' => 'VPN 断开时立即切断网络，防止数据泄漏',
    _ => 'Block traffic if the VPN connection drops',
  };

  String get protocol => switch (localeCode) {
    'fa' => 'پروتکل ارتباطی',
    'ar' => 'البروتوكول',
    'tr' => 'Protokol',
    'es' => 'Protocolo',
    'fr' => 'Protocole',
    'de' => 'Protokoll',
    'it' => 'Protocollo',
    'ru' => 'Протокол',
    'zh' => '协议',
    _ => 'Protocol',
  };

  String get vpnProvider => switch (localeCode) {
    'fa' => 'هسته VPN',
    'ar' => 'مزود الخدمة',
    'tr' => 'VPN Sağlayıcı',
    'es' => 'Proveedor VPN',
    'fr' => 'Fournisseur VPN',
    'de' => 'VPN-Anbieter',
    'it' => 'Provider VPN',
    'ru' => 'Провайдер VPN',
    'zh' => 'VPN 核心',
    _ => 'VPN provider',
  };

  String get providerSeparated => switch (localeCode) {
    'fa' => 'هسته اجرایی به‌صورت ایزوله و پرسرعت فعال است',
    'ar' => 'تم فصل طبقة الاتصال لضمان أقصى قدر من الأمان',
    'tr' => 'Çekirdek katman yüksek hız ve güvenlik için ayrılmıştır',
    'es' => 'La capa de conexión está optimizada para máxima velocidad',
    'fr' => 'Le moteur de connexion est isolé pour des performances optimales',
    'de' => 'Die Verbindungsschicht ist für maximale Geschwindigkeit isoliert',
    'it' => 'Il motore di connessione è ottimizzato per le massime prestazioni',
    'ru' => 'Сетевой модуль изолирован для максимальной скорости',
    'zh' => '核心连接层已优化以实现极速与稳定性',
    _ => 'Provider layer is optimized for speed and isolation',
  };

  String get privacy => switch (localeCode) {
    'fa' => 'حریم خصوصی',
    'ar' => 'الخصوصية',
    'tr' => 'Gizlilik',
    'es' => 'Privacidad',
    'fr' => 'Confidentialité',
    'de' => 'Privatsphäre',
    'it' => 'Privacy',
    'ru' => 'Конфиденциальность',
    'zh' => '隐私与安全',
    _ => 'Privacy',
  };

  String get dnsLeakProtection => switch (localeCode) {
    'fa' => 'محافظت پیشرفته در برابر نشت DNS',
    'ar' => 'حماية متقدمة من تسريب DNS',
    'tr' => 'Gelişmiş DNS Sızıntı Koruması',
    'es' => 'Protección avanzada contra fugas DNS',
    'fr' => 'Protection avancée contre les fuites DNS',
    'de' => 'Erweiterter DNS-Leckschutz',
    'it' => 'Protezione avanzata da perdite DNS',
    'ru' => 'Защита от утечек DNS',
    'zh' => 'DNS 防泄漏保护',
    _ => 'DNS leak protection',
  };

  String get ipv6LeakProtection => switch (localeCode) {
    'fa' => 'محافظت در برابر نشت IPv6',
    'ar' => 'حماية من تسريب IPv6',
    'tr' => 'IPv6 Sızıntı Koruması',
    'es' => 'Protección contra fugas IPv6',
    'fr' => 'Protection contre les fuites IPv6',
    'de' => 'IPv6-Leckschutz',
    'it' => 'Protezione da perdite IPv6',
    'ru' => 'Защита от утечек IPv6',
    'zh' => 'IPv6 防泄漏保护',
    _ => 'IPv6 leak protection',
  };

  String get appearance => switch (localeCode) {
    'fa' => 'ظاهر و پوسته',
    'ar' => 'المظهر',
    'tr' => 'Görünüm',
    'es' => 'Apariencia',
    'fr' => 'Apparence',
    'de' => 'Erscheinungsbild',
    'it' => 'Aspetto',
    'ru' => 'Внешний вид',
    'zh' => '外观主题',
    _ => 'Appearance',
  };

  String get system => switch (localeCode) {
    'fa' => 'همگام با سیستم',
    'ar' => 'النظام',
    'tr' => 'Sistem',
    'es' => 'Sistema',
    'fr' => 'Système',
    'de' => 'System',
    'it' => 'Sistema',
    'ru' => 'Системная',
    'zh' => '跟随系统',
    _ => 'System',
  };

  String get light => switch (localeCode) {
    'fa' => 'روشن',
    'ar' => 'فاتح',
    'tr' => 'Açık',
    'es' => 'Claro',
    'fr' => 'Clair',
    'de' => 'Hell',
    'it' => 'Chiaro',
    'ru' => 'Светлая',
    'zh' => '浅色',
    _ => 'Light',
  };

  String get dark => switch (localeCode) {
    'fa' => 'تیره مدرن',
    'ar' => 'داكن عصري',
    'tr' => 'Koyu Modern',
    'es' => 'Oscuro moderno',
    'fr' => 'Sombre moderne',
    'de' => 'Dunkel Modern',
    'it' => 'Scuro moderno',
    'ru' => 'Темная',
    'zh' => '深色现代',
    _ => 'Dark',
  };

  String get language => switch (localeCode) {
    'fa' => 'زبان برنامه',
    'ar' => 'لغة التطبيق',
    'tr' => 'Uygulama Dili',
    'es' => 'Idioma de la aplicación',
    'fr' => 'Langue de l\'application',
    'de' => 'App-Sprache',
    'it' => 'Lingua dell\'app',
    'ru' => 'Язык приложения',
    'zh' => '应用语言',
    _ => 'Language',
  };

  String get loadApps => switch (localeCode) {
    'fa' => 'بارگذاری برنامه‌ها',
    'ar' => 'تحميل التطبيقات',
    'tr' => 'Uygulamaları Yükle',
    'es' => 'Cargar aplicaciones',
    'fr' => 'Charger les applications',
    'de' => 'Apps laden',
    'it' => 'Carica applicazioni',
    'ru' => 'Загрузить приложения',
    'zh' => '加载应用列表',
    _ => 'Load apps',
  };

  String get searchingApps => switch (localeCode) {
    'fa' => 'جستجوی برنامه‌ها...',
    'ar' => 'البحث في التطبيقات...',
    'tr' => 'Uygulama ara...',
    'es' => 'Buscar aplicaciones...',
    'fr' => 'Rechercher des applications...',
    'de' => 'Apps suchen...',
    'it' => 'Cerca applicazioni...',
    'ru' => 'Поиск приложений...',
    'zh' => '搜索应用...',
    _ => 'Search apps...',
  };

  String get bypassIran => switch (localeCode) {
    'fa' => 'عدم عبور ترافیک ایران (دور زدن سایت‌های داخلی)',
    'ar' => 'تجاوز المواقع المحلية',
    'tr' => 'Yerel Siteleri Doğrudan Bağla',
    'es' => 'Omitir sitios locales',
    'fr' => 'Contourner les sites locaux',
    'de' => 'Lokale Webseiten umgehen',
    'it' => 'Bypassa siti locali',
    'ru' => 'Обход локальных сайтов',
    'zh' => '直连国内网站',
    _ => 'Bypass Domestic Websites',
  };

  String get connectedTo => switch (localeCode) {
    'fa' => 'متصل به',
    'ar' => 'متصل بـ',
    'tr' => 'Bağlanılan:',
    'es' => 'Conectado a',
    'fr' => 'Connecté à',
    'de' => 'Verbunden mit',
    'it' => 'Connesso a',
    'ru' => 'Подключено к',
    'zh' => '已连接至',
    _ => 'Connected to',
  };
}
