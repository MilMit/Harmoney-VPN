// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Harmoney VPN';

  @override
  String get splashSubtitle =>
      'Creado para un acceso seguro a Internet,\npara todos, en cualquier lugar';

  @override
  String get connect => 'Conectar';

  @override
  String get disconnect => 'Desconectar';

  @override
  String get connected => 'Conectado';

  @override
  String get disconnected => 'Desconectado';

  @override
  String get connecting => 'Conectando';

  @override
  String connectingVia(String groupName) {
    return 'Conectando a través de $groupName';
  }

  @override
  String get switchingMethod => 'CAMBIANDO MÉTODO';

  @override
  String get speedTest => 'Prueba de velocidad';

  @override
  String get download => 'DESCARGA';

  @override
  String get upload => 'SUBIDA';

  @override
  String get ping => 'PING';

  @override
  String get latency => 'LATENCIA';

  @override
  String get jitter => 'JITTER';

  @override
  String get packetLoss => 'PÉRDIDA';

  @override
  String get tapHere => 'TOCA AQUÍ';

  @override
  String get settings => 'Ajustes';

  @override
  String get introduction => 'Introducción';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get termsAndConditions => 'Términos y condiciones';

  @override
  String get ourWebsite => 'Nuestro sitio web';

  @override
  String get marketplace => 'Mercado';

  @override
  String get telegramBot => 'Bot de Telegram';

  @override
  String get sourceCode => 'Código fuente';

  @override
  String get openSourceLicenses => 'Licencias de código abierto';

  @override
  String get betaCommunity => 'Comunidad Beta';

  @override
  String get close => 'Cerrar';

  @override
  String get copyLogs => 'Copiar registros';

  @override
  String get logsCopied => 'Registros copiados al portapapeles';

  @override
  String get appLogs => 'Registros de la aplicación';

  @override
  String get autoRefresh => 'Autorrecarga';

  @override
  String get clear => 'Limpiar';

  @override
  String get quickMenu => 'Menú rápido';

  @override
  String get noInternet => 'Sin Internet';

  @override
  String get error => 'Error';

  @override
  String get loading => 'Cargando';

  @override
  String get analyzing => 'Analizando';

  @override
  String get mbps => 'Mbps';

  @override
  String get ms => 'ms';

  @override
  String get language => 'Idioma';

  @override
  String get tips => 'CONSEJOS';

  @override
  String get english => 'Inglés';

  @override
  String get chinese => '中文 (chino)';

  @override
  String get gotIt => 'Entendido';

  @override
  String get learnMore => 'MÁS INFORMACIÓN';

  @override
  String get harmoneyGoal =>
      'El objetivo de Harmoney es garantizar el acceso seguro a la información pública y proporcionar una experiencia de navegación gratuita.';

  @override
  String get statusIsChilling => 'es escalofriante.';

  @override
  String get statusIs => 'es';

  @override
  String get statusFailed => 'fallido.';

  @override
  String get statusHas => 'tiene';

  @override
  String get statusIsReturning => 'está devolviendo';

  @override
  String get statusToStandbyMode => 'al modo de espera.';

  @override
  String get statusPluggingIn => 'conectando...';

  @override
  String get statusPoweredUp => 'encendido';

  @override
  String get statusDoingScience => 'haciendo ciencia...';

  @override
  String get statusExitedMatrix => 'salió de la matriz';

  @override
  String get statusSorry => 'lo sentimos :(';

  @override
  String get statusConnectAlready => 'Conéctate ya';

  @override
  String get statusTestingSpeed => 'probando velocidad...';

  @override
  String get statusIsReady => 'está listo';

  @override
  String get statusIsInTrouble => 'está en problemas.';

  @override
  String get statusDXcoreDown => 'DXcore abajo.';

  @override
  String get statusToSpeedTest => 'para probar la velocidad';

  @override
  String get statusYoursToShape => 'el tuyo para darle forma';

  @override
  String get settingsConnectionMethod => 'MÉTODO DE CONEXIÓN';

  @override
  String get settingsEscapeMode => 'MODO DE ESCAPE';

  @override
  String get settingsDestination => 'DESTINO';

  @override
  String get settingsSplitTunnel => 'Túnel dividido';

  @override
  String get settingsKillSwitch => 'Interruptor de corte';

  @override
  String get settingsDeepScan => 'ESCANEO PROFUNDO';

  @override
  String get settingsHealthCheck => 'VERIFICACIÓN DE ESTADO';

  @override
  String get settingsIncluded => 'INCLUIDO';

  @override
  String get settingsAtLeastOneCoreRequired =>
      'Al menos un núcleo debe permanecer habilitado';

  @override
  String get settingsResetToDefault => 'RESET';

  @override
  String get offlineFlowlineMessage =>
      'Las actualizaciones de Flowline se han pausado porque actualmente se está utilizando la versión sin conexión.';

  @override
  String get offlineFlowlineUndo => 'DESHACER';

  @override
  String get updateAvailable => 'Actualización disponible';

  @override
  String get updateRequired => 'Actualización requerida';

  @override
  String get updateOptionalMessage =>
      'Para aprovechar al máximo la aplicación y disfrutar de las últimas mejoras, actualice a la versión más reciente.';

  @override
  String get updateRequiredMessage =>
      'Para continuar usando Harmoney, actualice a la última versión. Esta actualización incluye mejoras críticas y es necesaria para la funcionalidad de la aplicación.';

  @override
  String get updateNow => 'Actualizar ahora';

  @override
  String get notNow => 'Ahora no';

  @override
  String get updateMethods => 'Métodos de actualización';

  @override
  String get importConfig => 'Importar configuración';

  @override
  String get synchronization => 'Sincronización';

  @override
  String get settingsDonation => 'Donación';

  @override
  String get settingsDonationDescription =>
      'Ayúdanos a derribar los muros de la censura digital y el filtrado de Internet.';

  @override
  String get authenticationRequired => 'Se requiere autenticación';

  @override
  String get premiumLoginDescription =>
      'Para acceder a sus suscripciones Premium, debe iniciar sesión o crear una cuenta a través del sitio web Harmoney.';

  @override
  String get email => 'Correo electrónico';

  @override
  String get emailHint => 'ejemplo@dominio.com';

  @override
  String get emailValidation => 'Por favor ingrese su correo electrónico';

  @override
  String get password => 'Contraseña';

  @override
  String get passwordHint => 'Ingrese su contraseña';

  @override
  String get passwordValidation => 'Por favor ingrese su contraseña';

  @override
  String get passwordMinLength =>
      'La contraseña debe tener al menos 6 caracteres';

  @override
  String get login => 'Iniciar sesión';

  @override
  String get noAccount => '¿No tienes una cuenta?';

  @override
  String get signUp => 'Regístrate';

  @override
  String get loginFailed =>
      'Error de inicio de sesion. Por favor verifique sus credenciales e inténtelo nuevamente.';

  @override
  String get loginSuccess => '¡Inicie sesión correctamente!';

  @override
  String get code => 'Código';

  @override
  String get codeHint => 'Introduce tu código de acceso';

  @override
  String get codeValidation => 'Por favor introduce tu código';

  @override
  String get premiumLoginByCodeDescription =>
      'Para acceder a sus suscripciones Premium, ingrese el código de acceso que se le proporcionó.';

  @override
  String get havingTrouble => '¿Tienes problemas?';

  @override
  String get signedInAs =>
      'Actualmente ha iniciado sesión con la dirección de correo electrónico';

  @override
  String get premiumImportDescription =>
      '. Si sus suscripciones Premium no se pueden cargar debido a restricciones de Internet y no puede conectarse utilizando los métodos disponibles, puede importar el archivo obtenido de Marketplace a la aplicación.';

  @override
  String get planningToExit => '¿Planea salir?';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get signOutSuccess => '¡Cerrar sesión correctamente!';

  @override
  String get settingsMarketplace => 'Marketplace';

  @override
  String get marketplaceDescription =>
      'Explore configuraciones seguras de VPN de proveedores confiables.';

  @override
  String get loggedIn => 'INICIÓ SESIÓN';

  @override
  String get loginOrRegister => 'INICIAR SESIÓN O REGÍSTRESE';

  @override
  String get loginByCode => 'Iniciar sesión por código';

  @override
  String get backToLoginByEmail =>
      'Volver a iniciar sesión por correo electrónico';

  @override
  String get connectionRequired => 'Conexión requerida';

  @override
  String get connectionRequiredDescription =>
      'Para completar un proceso de inicio de sesión o registro seguro, primero debe establecer una conexión utilizando uno de los métodos de conexión disponibles.';
}
