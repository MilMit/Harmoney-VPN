// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Harmoney VPN';

  @override
  String get splashSubtitle =>
      'مصمم للوصول الآمن إلى الإنترنت،\nللجميع وفي كل مكان';

  @override
  String get connect => 'اتصال';

  @override
  String get disconnect => 'قطع الاتصال';

  @override
  String get connected => 'متصل';

  @override
  String get disconnected => 'غير متصل';

  @override
  String get connecting => 'جارٍ الاتصال';

  @override
  String connectingVia(String groupName) {
    return 'جارٍ الاتصال عبر $groupName';
  }

  @override
  String get switchingMethod => 'جارٍ تبديل المسار';

  @override
  String get speedTest => 'اختبار السرعة';

  @override
  String get download => 'تنزيل';

  @override
  String get upload => 'رفع';

  @override
  String get ping => 'استجابة';

  @override
  String get latency => 'التأخير';

  @override
  String get jitter => 'تذبذب';

  @override
  String get packetLoss => 'فقدان الحزم';

  @override
  String get tapHere => 'اضغط هنا';

  @override
  String get settings => 'الإعدادات';

  @override
  String get introduction => 'المقدمة';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get termsAndConditions => 'الشروط والأحكام';

  @override
  String get ourWebsite => 'موقعنا الإلكتروني';

  @override
  String get marketplace => 'المتجر';

  @override
  String get telegramBot => 'بوت تيليجرام';

  @override
  String get sourceCode => 'المصدر البرمجي';

  @override
  String get openSourceLicenses => 'تراخيص مفتوحة المصدر';

  @override
  String get betaCommunity => 'مجتمع الإصدار التجريبي';

  @override
  String get close => 'إغلاق';

  @override
  String get copyLogs => 'نسخ السجلات';

  @override
  String get logsCopied => 'تم نسخ السجلات إلى الحافظة';

  @override
  String get appLogs => 'سجلات التطبيق';

  @override
  String get autoRefresh => 'تحديث تلقائي';

  @override
  String get clear => 'مسح';

  @override
  String get quickMenu => 'القائمة السريعة';

  @override
  String get noInternet => 'لا يوجد اتصال بالإنترنت';

  @override
  String get error => 'خطأ';

  @override
  String get loading => 'جارٍ التحميل';

  @override
  String get analyzing => 'جارٍ التحليل';

  @override
  String get mbps => 'Mbps';

  @override
  String get ms => 'مللي ثانية';

  @override
  String get language => 'اللغة';

  @override
  String get tips => 'نصائح';

  @override
  String get english => 'الإنجليزية';

  @override
  String get chinese => '中文 (الصينية)';

  @override
  String get gotIt => 'فهمت';

  @override
  String get learnMore => 'تعرف على المزيد';

  @override
  String get harmoneyGoal =>
      'الهدف من Harmoney هو ضمان الوصول الآمن إلى المعلومات العامة وتوفير تجربة تصفح مجانية.';

  @override
  String get statusIsChilling => 'تقشعر له الأبدان.';

  @override
  String get statusIs => 'هو فشل';

  @override
  String get statusFailed => '.';

  @override
  String get statusHas => 'قام';

  @override
  String get statusIsReturning => 'بإرجاع';

  @override
  String get statusToStandbyMode => 'إلى وضع الاستعداد. توصيل';

  @override
  String get statusPluggingIn => '... تشغيل';

  @override
  String get statusPoweredUp => '';

  @override
  String get statusDoingScience => 'القيام بالعلم ... خرج';

  @override
  String get statusExitedMatrix => 'من المصفوفة';

  @override
  String get statusSorry => 'نحن آسفون :(';

  @override
  String get statusConnectAlready => 'اتصل بالفعل بسرعة اختبار';

  @override
  String get statusTestingSpeed => '...';

  @override
  String get statusIsReady => 'جاهز';

  @override
  String get statusIsInTrouble => 'في ورطة.';

  @override
  String get statusDXcoreDown => 'DXcore للأسفل.';

  @override
  String get statusToSpeedTest => 'لاختبار السرعة';

  @override
  String get statusYoursToShape => 'لك الشكل';

  @override
  String get settingsConnectionMethod => 'طريقة الاتصال';

  @override
  String get settingsEscapeMode => 'وضع الهروب';

  @override
  String get settingsDestination => 'الوجهة';

  @override
  String get settingsSplitTunnel => 'تقسيم النفق';

  @override
  String get settingsKillSwitch => 'مفتاح الإيقاف الطارئ';

  @override
  String get settingsDeepScan => 'فحص عميق';

  @override
  String get settingsHealthCheck => 'فحص الصحة';

  @override
  String get settingsIncluded => 'متضمن';

  @override
  String get settingsAtLeastOneCoreRequired =>
      'يجب أن يظل نواة واحدة على الأقل ممكنة';

  @override
  String get settingsResetToDefault => 'إعادة تعيين';

  @override
  String get offlineFlowlineMessage =>
      'تم إيقاف تحديثات Flowline مؤقتًا نظرًا لاستخدام الإصدار غير المتصل حاليًا.';

  @override
  String get offlineFlowlineUndo => 'التراجع عن';

  @override
  String get updateAvailable => 'التحديث متاح';

  @override
  String get updateRequired => 'التحديث مطلوب';

  @override
  String get updateOptionalMessage =>
      'للحصول على أقصى استفادة من التطبيق والاستمتاع بأحدث التحسينات، يرجى التحديث إلى الإصدار الأحدث.';

  @override
  String get updateRequiredMessage =>
      'لمواصلة استخدام Harmoney، يرجى التحديث إلى الإصدار الأحدث. يتضمن هذا التحديث تحسينات مهمة وهو مطلوب لوظائف التطبيق.';

  @override
  String get updateNow => 'التحديث الآن';

  @override
  String get notNow => 'ليس الآن';

  @override
  String get updateMethods => 'طرق التحديث';

  @override
  String get importConfig => 'تكوين الاستيراد';

  @override
  String get synchronization => 'المزامنة';

  @override
  String get settingsDonation => 'التبرع';

  @override
  String get settingsDonationDescription =>
      'ساعدنا في كسر جدران الرقابة الرقمية وتصفية الإنترنت. يلزم مصادقة';

  @override
  String get authenticationRequired => '';

  @override
  String get premiumLoginDescription =>
      'للوصول إلى اشتراكك (اشتراكاتك) المميز، تحتاج إلى تسجيل الدخول أو إنشاء حساب من خلال موقع Harmoney.';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get emailHint => 'example@domain.com';

  @override
  String get emailValidation => 'يرجى إدخال بريدك الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get passwordHint => 'أدخل كلمة المرور الخاصة بك';

  @override
  String get passwordValidation => 'الرجاء إدخال كلمة المرور الخاصة بك';

  @override
  String get passwordMinLength =>
      'يجب أن تتكون كلمة المرور من 6 أحرف على الأقل';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get noAccount => 'ليس لديك حساب؟';

  @override
  String get signUp => 'قم بالتسجيل';

  @override
  String get loginFailed =>
      'فشل تسجيل الدخول. يرجى التحقق من بيانات الاعتماد الخاصة بك وحاول مرة أخرى.';

  @override
  String get loginSuccess => 'تم تسجيل الدخول بنجاح! رمز';

  @override
  String get code => '';

  @override
  String get codeHint => 'أدخل رمز الوصول الخاص بك';

  @override
  String get codeValidation => 'يرجى إدخال الرمز الخاص بك';

  @override
  String get premiumLoginByCodeDescription =>
      'للوصول إلى اشتراكك (اشتراكاتك) المميز، أدخل رمز الوصول المقدم لك.';

  @override
  String get havingTrouble => 'هل تواجه مشكلة؟';

  @override
  String get signedInAs =>
      'لقد قمت حاليًا بتسجيل الدخول باستخدام عنوان البريد الإلكتروني';

  @override
  String get premiumImportDescription =>
      'إذا تعذر تحميل اشتراكاتك المميزة بسبب قيود الإنترنت ولم تتمكن من الاتصال باستخدام الطرق المتاحة، فيمكنك استيراد الملف الذي تم الحصول عليه من Marketplace إلى التطبيق.';

  @override
  String get planningToExit => 'هل تخطط للخروج؟';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String get signOutSuccess => 'تم تسجيل الخروج بنجاح!';

  @override
  String get settingsMarketplace => 'Marketplace';

  @override
  String get marketplaceDescription =>
      'تصفح تكوينات VPN الآمنة من الموردين الموثوقين. تم تسجيل الدخول إلى';

  @override
  String get loggedIn => '';

  @override
  String get loginOrRegister => 'تسجيل الدخول أو التسجيل';

  @override
  String get loginByCode => 'تسجيل الدخول بالرمز';

  @override
  String get backToLoginByEmail =>
      'العودة إلى تسجيل الدخول عبر البريد الإلكتروني';

  @override
  String get connectionRequired => 'مطلوب اتصال';

  @override
  String get connectionRequiredDescription =>
      'لإكمال عملية تسجيل دخول أو تسجيل آمنة، يجب عليك أولاً إنشاء اتصال باستخدام إحدى طرق الاتصال المتاحة.';
}
