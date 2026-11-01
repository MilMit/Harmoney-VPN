// Shared UI text translations for the Pro and GitHub editions.
const Map<String, Map<String, String>> inlineTextTranslations = {
  "fa": {
    "0 GB (Off)": "0 گیگابایت (خاموش)",
    "100 GB": "100 گیگابایت",
    "200 GB": "200 گیگابایت",
    "50 GB": "50 گیگابایت",
    "A calmer connection. A brighter world.": "یک اتصال آرام تر. دنیای روشن تر",
    "Add": "اضافه کردن",
    "Add CIDR rule": "افزودن قانون CIDR",
    "Add Policy": "افزودن خط مشی",
    "Add Routing Policy Rule": "افزودن قانون خط مشی مسیریابی",
    "Add split-tunnel CIDR": "افزودن تونل تقسیم CIDR",
    "Advanced Policy Rules": "قوانین خط مشی پیشرفته",
    "Advanced Routing & Protection": "مسیریابی و حفاظت پیشرفته",
    "Allow IPv6": "مجاز به IPv6",
    "Allow Iran traffic during Lockdown": "اجازه ترافیک ایران در زمان قفل شدن",
    "Always-on VPN": "همیشه روشن VPN",
    "Always-on and Lockdown cover Firefox, WireGuard, IKEv2 and OpenVPN. DNS and IPv6 policies are enforced by each active tunnel profile.":
        "پوشش Always-on و Lockdown Firefox، WireGuard، IKEv2 و OpenVPN. خط‌مشی‌های DNS و IPv6 توسط هر پروفایل تونل فعال اعمال می‌شوند.",
    "Always-on and Lockdown cover supported VPN connections. DNS and IPv6 policies are enforced by the active tunnel.":
        "Always-on و Lockdown از اتصالات VPN پشتیبانی می کند. خط‌مشی‌های DNS و IPv6 توسط تونل فعال اعمال می‌شوند.",
    "Android Protection": "حفاظت Android",
    "Android app bypass applies after reconnecting the VPN.":
        "دور زدن برنامه Android پس از اتصال مجدد VPN اعمال می شود.",
    "Auto (Fallback)": "خودکار (بازگشت)",
    "Block Destination": "مسدود کردن مقصد",
    "Block IPv6 (Leak Protection)": "بلوک IPv6 (محافظت در برابر نشت)",
    "Block Internet Access": "مسدود کردن دسترسی به اینترنت",
    "Block QUIC (UDP 443)": "QUIC (UDP 443)",
    "Block all internet leaks when the VPN drops unexpectedly":
        "مسدود کردن تمام موارد نشت اینترنت هنگامی که VPN به طور غیرمنتظره افت می کند",
    "Block connections without VPN": "اتصالات بدون پوشش پروتکل VPN",
    "Block internet": "مسدود کردن اینترنت",
    "Bypass VPN": "دور زدن VPN",
    "Cancel": "لغو",
    "Client Isolation": "جداسازی کلاینت",
    "Close": "بستن",
    "Connection": "اتصال",
    "Console output copied to clipboard.": "خروجی کنسول در کلیپ بورد کپی شد.",
    "Country destinations bypass the VPN directly through the ISP; other traffic remains inside the VPN.":
        "مقاصد کشوری VPN را مستقیماً از طریق ISP دور می زنند. سایر ترافیک ها در داخل VPN باقی می مانند. عملکرد",
    "Create": "ایجاد",
    "Create new list": "ایجاد لیست جدید",
    "Custom Location Lists": "لیست های مکان سفارشی",
    "Default Hotspot Route": "مسیر پیش‌فرض نقطه اتصال",
    "Deselect all": "لغو انتخاب همه",
    "Diagnostic Terminal Output": "خروجی ترمینال تشخیصی",
    "Diagnostics & Health": "تشخیص و سلامت",
    "Direct (Bypass VPN)": "مستقیم (دور زدن VPN)",
    "Domains, IPv4 addresses or CIDRs that always bypass the VPN":
        "دامنه‌ها، آدرس‌های IPv4 یا CIDRs که همیشه از VPN دور می‌زنند",
    "Done": "انجام شد",
    "Emergency Stop": "توقف اضطراری",
    "Emergency Stop executed: Processes terminated and physical network unjammed.":
        "توقف اضطراری اجرا شد: فرآیندها خاتمه یافتند و شبکه فیزیکی مسدود نشد.",
    "Endpoint Candidates": "نامزدهای نقطه پایانی",
    "Enforce Quota": "اجرای سهمیه",
    "Error": "خطا",
    "Explain": "خط مشی",
    "Explain why a destination routes via VPN or Direct ISP, with rule priority matching.":
        "توضیح دهید که چرا یک مقصد از طریق VPN یا مستقیم ISP، با تطبیق اولویت قانون، مسیر می‌رود.",
    "Export the selected server list as JSON and TXT files.":
        "لیست سرور انتخابی را به عنوان فایل های JSON و TXT صادر کنید.",
    "FASTEST ⚡": "سریعترین ⚡",
    "Firefox Account": "حساب Firefox",
    "Firefox VPN": "Firefox VPN",
    "Firefox data allowance": "کمک هزینه داده Firefox",
    "Force HTTPS traffic through TCP/TLS for consistent filtering.":
        "برای فیلتر کردن مداوم، ترافیک HTTPS را از طریق TCP/TLS اجباری کنید.",
    "Force Hotspot VPN DNS": "اجباری Hotspot VPN DNS",
    "Force VPN": "اجباری VPN",
    "Force VPN Encrypted": "اجباری VPN رمزگذاری شده",
    "Guest Hotspot": "مهمان نقطه اتصال",
    "HTTP/2 CONNECT": "HTTP/2 اتصال",
    "Harmoney": "Harmoney",
    "Harmoney Pro": "Harmoney Pro",
    "Harmoney Smart": "Harmoney Smart",
    "Host and Hotspot clients": "مشتریان میزبان و نقطه اتصال",
    "Host machine only": "فقط ماشین میزبان",
    "Hotspot & Devices": "Hotspot & Devices",
    "Hotspot Doctor & Diagnostics": "نقطه اتصال پزشک و تشخیص",
    "Hotspot IPv6 Policy": "IPv6",
    "Hotspot clients only": "فقط مشتریان Hotspot",
    "IKEv2": "IKEv2",
    "IPv6 leak protection": "محافظت در برابر نشت IPv6",
    "Import ZIP Archive": "بایگانی ZIP",
    "Inspect XFRM interface, table 220, IP rules, and verify live connectivity safely.":
        "رابط XFRM، جدول 220، قوانین IP را بررسی کنید و اتصال زنده را به صورت زنده تأیید کنید.",
    "Keep domestic services and banking reachable when the VPN drops":
        "وقتی VPN کاهش می یابد، خدمات داخلی و بانکداری را در دسترس نگه دارید",
    "Launch direct": "راه اندازی مستقیم",
    "Live Connection Logs (Stream)": "گزارشهای اتصال زنده (جریان)",
    "Live Logs": "گزارش‌های زنده پروتکل",
    "Live Verification": "تأیید زنده",
    "Live connection events from all providers and protocols":
        "رویدادهای اتصال زنده از همه ارائه دهندگان و پروتکل ها",
    "Lockdown mode (Kill Switch)": "حالت قفل کردن (سوئیچ کشتن)",
    "Logs copied to clipboard (secrets redacted).":
        "گزارش‌ها در کلیپ‌بورد کپی شدند (اسرار ویرایش شدند). بسته پشتیبانی",
    "Manage VPN Profiles": "مدیریت نمایه های VPN",
    "Manage connected devices, bandwidth quotas, guest Wi-Fi, and routing policies.":
        "پشتیبانی نمی شود.",
    "Mbps": "Mbps",
    "Network Subnets (CIDRs)": "(CIDRs)",
    "Network unjammed: Kill switch, routes, and XFRM interfaces restored to normal.":
        "شبکه حذف شد: سوئیچ، مسیرها، و رابط های XFRM مجدداً ذخیره شده را از بین ببرید.",
    "New Custom List": "لیست سفارشی جدید",
    "No CIDR rules yet.": "هنوز هیچ قانون CIDR وجود ندارد.",
    "No advanced policy rules configured.":
        "هیچ قانون خط مشی پیشرفته پیکربندی نشده است.",
    "No custom bypass rules.": "بدون قوانین دور زدن سفارشی.",
    "No custom lists created yet.": "هنوز هیچ لیست سفارشی ایجاد نشده است.",
    "No devices currently connected to hotspot.":
        "در حال حاضر هیچ دستگاهی به نقطه اتصال متصل نیست. خط مشی",
    "No endpoint candidates configured.":
        "هیچ نامزد نقطه پایانی پیکربندی نشده است. وضعیت",
    "No matching events yet. Start a VPN connection to collect logs.":
        "هنوز رویداد منطبقی وجود ندارد. یک اتصال VPN برای جمع آوری سیاهه ها راه اندازی کنید.",
    "Notify only": "فقط",
    "Offline cache ready": "کش آفلاین آماده",
    "OpenVPN": "OpenVPN",
    "Operation failed": "ناموفق بود قوانین دور زدن سفارشی",
    "Overall Tunnel Health": "سلامت کلی تونل",
    "Pause Device Connection": "مکث اتصال دستگاه",
    "Ping": "پینگ",
    "Prevent connected hotspot clients from communicating directly.":
        "از ارتباط مستقیم کلاینت های هات اسپات متصل جلوگیری کنید. خط مشی نقطه اتصال",
    "Protected Hotspot Options": "گزینه های Hotspot محافظت شده",
    "Protection HUD": "حفاظت HUD",
    "Protection settings are applied by Android VpnService and take effect after reconnecting.":
        "تنظیمات حفاظتی توسط Android VpnService اعمال می شود و پس از اتصال مجدد اعمال می شود.",
    "Protocol coverage": "را مسدود کنید",
    "Provider": "ارائه دهنده",
    "Queued…": "در صف...",
    "Quota Exceeded Action:": "اقدام بیش از سهمیه:",
    "Reconnect the VPN to apply Android CIDR routes.":
        "برای اعمال مسیرهای Android CIDR مجدداً VPN را وصل کنید. زیرشبکه های شبکه",
    "Redirect all device DNS queries to Surfshark DNS.":
        "همه درخواست های DNS دستگاه را به Surfshark DNS هدایت کنید. بلوک",
    "Redirect device DNS queries through the selected VPN.":
        "تغییر مسیر دستگاه DNS از طریق VPN انتخاب شده است. پوشش",
    "Refresh": "تازه‌سازی",
    "Repair Hotspot Routing": "تعمیر مسیریابی نقطه اتصال",
    "Route Explain": "مسیر توضیح",
    "Route IPv6 through supported tunnels; reconnect to apply":
        "مسیر IPv6 از طریق تونل های پشتیبانی شده؛ برای اعمال",
    "Route Table & XFRM Verification": "جدول مسیریابی و بررسی XFRM",
    "Route specific destinations through Direct, Force VPN, or Block.":
        "مقصدهای خاص را از طریق مستقیم، اجباری VPN یا مسدود کردن مسیریابی کنید.",
    "Route test": "تست مسیر",
    "Routing Policy:": "خط مشی مسیریابی:",
    "Run Hotspot Doctor": "اجرای Hotspot Doctor",
    "Safe Apply & LKG": "اعمال ایمن و LKG",
    "Save": "ذخیره",
    "Secure VPN DNS": "ایمن VPN DNS",
    "Select all": "انتخاب همه",
    "Start Guest": "مهمان شروع",
    "Start Guest Hotspot": "شروع نقطه اتصال مهمان",
    "Start Guest Wi-Fi": "شروع مهمان Wi-Fi",
    "Stop Guest": "توقف مهمان",
    "Support bundle exported and copied to clipboard.":
        "صادر و در کلیپ بورد کپی شد.",
    "Surfshark": "Surfshark",
    "Talker Logs": "گزارش‌های سخنگو",
    "Throttle to 128kbit/s": "دریچه گاز را تا 128 کیلوبیت بر ثانیه اعلام کنید",
    "Tunnel path audits, leak tests, latency probes, and runtime telemetry":
        "ممیزی مسیر تونل، آزمایش‌های نشت، پروب‌های تأخیر و تله‌متری زمان اجرا",
    "VPN Debug Logs": "VPN گزارش اشکال زدایی",
    "WireGuard": "WireGuard",
    "by MilMit": "توسط MilMit",
    "-- ms": "-- ام‌اس",
    "Add subscription": "اشتراک اضافه کنید",
    "App language": "زبان برنامه",
    "ACTIVE": "فعال",
    "Applications": "برنامه های کاربردی",
    "CONNECTING": "در حال اتصال",
    "Add application (.exe)": "افزودن برنامه (.exe)",
    "Active": "فعال",
    "Add at least one application to turn this on.":
        "حداقل یک برنامه کاربردی برای روشن کردن آن اضافه کنید.",
    "Check status": "وضعیت را بررسی کنید",
    "Cisco": "سیسکو",
    "Cancel Test": "لغو تست",
    "CONNECTED": "متصل شد",
    "Bypass": "دور زدن",
    "Battery Optimization Active (Doze Mode)":
        "بهینه سازی باتری فعال (حالت Doze)",
    "API Settings": "تنظیمات API",
    "Active Surfshark Protocol": "پروتکل فعال Surfshark",
    "Choose your desired VPN network provider":
        "ارائه دهنده شبکه VPN مورد نظر خود را انتخاب کنید",
    "Clear stored credentials from this device":
        "اطلاعات کاربری ذخیره شده را از این دستگاه پاک کنید",
    "Connected": "متصل شد",
    "CONNECT": "اتصال",
    "Connecting": "اتصال",
    "Copied!": "کپی شده!",
    "All": "همه",
    "Configures Windows ICS for the VPN adapter when Mobile Hotspot is active. The app verifies the ICS binding; client Internet traffic still needs an end-to-end check.":
        "هنگامی که هات اسپات موبایل فعال است، Windows ICS را برای آداپتور VPN پیکربندی می کند. برنامه اتصال ICS را تأیید می کند. ترافیک اینترنت مشتری هنوز نیاز به بررسی سرتاسری دارد.",
    "Add an HTTP or HTTPS subscription URL. Links are stored securely on this device.":
        "URL اشتراک HTTP یا HTTPS اضافه کنید. پیوندها به طور ایمن در این دستگاه ذخیره می شوند.",
    "A VPN operation is already running. Please wait for its status to update.":
        "یک عملیات VPN در حال اجرا است. لطفاً منتظر بمانید تا وضعیت آن به روز شود.",
    "Country & App Bypass": "دور زدن کشور و برنامه",
    "Disabled": "از کار افتاده است",
    "Credentials encrypted in privileged platform keystore":
        "اعتبارنامه ها در فروشگاه کلید پلت فرم ممتاز رمزگذاری شده است",
    "Bypassing": "دور زدن",
    "Disabled: all traffic routes securely through encrypted VPN tunnel.":
        "غیرفعال: تمام مسیرهای ترافیکی ایمن از طریق تونل VPN رمزگذاری شده.",
    "Disconnect": "قطع کن",
    "Download": "دانلود کنید",
    "Configure": "پیکربندی کنید",
    "Clear": "پاک کردن",
    "Change": "تغییر دهید",
    "Choose QR image": "تصویر QR را انتخاب کنید",
    "Copy Report": "کپی گزارش",
    "Country bypass DAT rules updated. Reconnect VPN to apply.":
        "قوانین دور زدن کشور DAT به روز شد. برای اعمال مجدد VPN را وصل کنید.",
    "Add an application before enabling app bypass.":
        "قبل از فعال کردن دور زدن برنامه، یک برنامه اضافه کنید.",
    "Country IPv4 ranges bypass the VPN after reconnecting. App bypass uses the Windows physical interface and requires the MilMit service.":
        "محدوده IPv4 کشور پس از اتصال مجدد، VPN را دور می زند. بای پس برنامه از رابط فیزیکی ویندوز استفاده می کند و به سرویس MilMit نیاز دارد.",
    "Disable Optimization": "بهینه سازی را غیرفعال کنید",
    "DISCONNECTED": "قطع شد",
    "DISCONNECTING": "قطع شدن",
    "Enable Split Tunneling": "Split Tunneling را فعال کنید",
    "Android Lockdown is active": "Android Lockdown فعال است",
    "Disconnect is taking longer than expected. You can try again.":
        "قطع ارتباط بیشتر از حد انتظار طول می کشد. می توانید دوباره امتحان کنید.",
    "Enable Hotspot Sharing (ICS)": "فعال کردن اشتراک گذاری هات اسپات (ICS)",
    "Android supports IPv4 and IPv6 CIDR bypass. Reconnect the VPN after changing these routes; app bypass also takes effect after reconnect.":
        "اندروید از IPv4 و IPv6 CIDR bypass پشتیبانی می کند. پس از تغییر این مسیرها، VPN را دوباره وصل کنید. دور زدن برنامه نیز پس از اتصال مجدد اعمال می شود.",
    "Favorites": "موارد دلخواه",
    "FireTunnel Token / Password": "رمز / رمز عبور FireTunnel",
    "History": "تاریخچه",
    "Export Servers": "سرورهای صادراتی",
    "Enable app bypass": "دور زدن برنامه را فعال کنید",
    "Encrypted tunnel verified with zero packet leakage.":
        "تونل رمزگذاری شده با نشت بسته صفر تأیید شده است.",
    "Enable Lockdown in Android VPN settings":
        "Lockdown را در تنظیمات VPN Android فعال کنید",
    "Firefox Account credentials are sent directly to Mozilla by the local Windows helper. The password is not saved; only the account tokens needed for future connections are stored locally.":
        "اطلاعات کاربری حساب فایرفاکس مستقیماً توسط راهنما محلی ویندوز به موزیلا ارسال می شود. رمز عبور ذخیره نشده است. فقط توکن های حساب مورد نیاز برای اتصالات بعدی به صورت محلی ذخیره می شوند.",
    "Firefox Account Email / User": "ایمیل / کاربر حساب فایرفاکس",
    "FireTunnel authenticates with Firefox Accounts. Credentials are sent only to the root-isolated native helper; tokens never enter Flutter storage.":
        "FireTunnel با اکانت های فایرفاکس احراز هویت می شود. اعتبارنامه ها فقط به کمک کننده بومی جدا شده از ریشه ارسال می شود. توکن ها هرگز وارد فضای ذخیره سازی فلاتر نمی شوند.",
    "Enable per-app bypass": "دور زدن هر برنامه را فعال کنید",
    "Harmoney Pro Connection Error": "خطای اتصال هارمونی پرو",
    "Hardware Profile: Dell Latitude 7210 & Intel / Cellular LTE":
        "مشخصات سخت افزار: Dell Latitude 7210 & Intel / Cellular LTE",
    "Harmoney Anti-Censorship Core": "هسته ضد سانسور هارمونی",
    "Firefox VPN Token & Auth": "فایرفاکس VPN Token & Auth",
    "Firefox VPN Account": "حساب VPN فایرفاکس",
    "Firefox VPN protocol": "پروتکل فایرفاکس VPN",
    "Firefox Account credentials are sent directly to Mozilla by the native Android engine. Encrypted tokens never enter Flutter storage.":
        "اعتبار اکانت فایرفاکس مستقیماً توسط موتور اصلی اندروید به موزیلا ارسال می شود. توکن های رمزگذاری شده هرگز وارد فضای ذخیره سازی فلاتر نمی شوند.",
    "Enabled for Harmoney": "برای هارمونی فعال شد",
    "Hotspot Inactive": "هات اسپات غیر فعال",
    "KEY REQUIRED": "کلید مورد نیاز است",
    "Live Active": "زنده فعال",
    "Live bandwidth, data accounting & quota":
        "پهنای باند زنده، حسابداری داده و سهمیه",
    "Load apps": "بارگذاری برنامه ها",
    "Login Required": "ورود لازم است",
    "Logout": "خروج از سیستم",
    "Logged In": "وارد شده است",
    "Harmoney Pro Sign In Required": "ورود به سیستم Harmoney Pro الزامی است",
    "Log in to account": "وارد حساب کاربری شوید",
    "Hardware-backed encryption: Credentials are encrypted in platform vault.":
        "رمزگذاری سخت افزاری: اعتبارنامه ها در خزانه پلت فرم رمزگذاری می شوند.",
    "Load installed applications to configure per-app bypass.":
        "برنامه های نصب شده را برای پیکربندی دور زدن هر برنامه بارگیری کنید.",
    "Inactive": "غیر فعال",
    "Locations & Routes": "مکان ها و مسیرها",
    "Manage connection, security, and appearance":
        "اتصال، امنیت و ظاهر را مدیریت کنید",
    "Live Real-Time Speed": "سرعت زنده در زمان واقعی",
    "Monthly Allowance": "کمک هزینه ماهانه",
    "No Limit Set": "بدون محدودیت تنظیم شده است",
    "Harmoney Pro Service": "سرویس هارمونی پرو",
    "Manage Account": "مدیریت حساب",
    "Import ZIP": "ZIP وارد کنید",
    "Last Speed Benchmark:": "آخرین معیار سرعت:",
    "Online": "آنلاین",
    "No imported profiles found.\\nImport a ZIP archive from Surfshark Manual Setup.":
        "هیچ نمایه وارداتی یافت نشد.\\nبایگانی ZIP را از راه‌اندازی دستی Surfshark وارد کنید.",
    "No favorite servers.": "بدون سرور مورد علاقه",
    "Live Speed & Traffic": "سرعت و ترافیک زنده",
    "No servers found.": "هیچ سروری پیدا نشد",
    "Manage Firefox VPN Account": "مدیریت اکانت VPN Firefox",
    "No active hotspot interface detected on system.":
        "هیچ رابط نقطه فعالی در سیستم شناسایی نشد.",
    "Open": "باز کنید",
    "No applications selected.": "هیچ برنامه ای انتخاب نشده است.",
    "Monthly Data Quota": "سهمیه داده ماهانه",
    "Per-app bypass is not supported on this platform.":
        "دور زدن هر برنامه در این پلتفرم پشتیبانی نمی‌شود.",
    "Per-app bypass": "دور زدن هر برنامه",
    "Private connection service": "خدمات اتصال خصوصی",
    "Recent": "اخیر",
    "Refresh Status": "وضعیت تازه کردن",
    "Manage": "مدیریت کنید",
    "Ping All": "همه را پینگ کنید",
    "Hotspot Active": "هات اسپات فعال",
    "Re-login": "دوباره وارد شوید",
    "Refresh status & quota": "بازخوانی وضعیت و سهمیه",
    "On Android and Linux the selected subscription is used, but the VPN core may choose a different node from it.":
        "در اندروید و لینوکس از اشتراک انتخاب شده استفاده می شود، اما هسته VPN ممکن است گره متفاوتی را از آن انتخاب کند.",
    "No subscriptions added yet.": "هنوز هیچ اشتراکی اضافه نشده است.",
    "Quota information unavailable": "اطلاعات سهمیه در دسترس نیست",
    "No speed tests recorded yet.": "هنوز هیچ تست سرعت ثبت نشده است.",
    "Ready to perform live routing and security audits.":
        "آماده برای انجام مسیریابی زنده و ممیزی های امنیتی.",
    "Repair ICS": "ICS را تعمیر کنید",
    "Retry": "دوباره امتحان کنید",
    "Recommended Fast Routes": "مسیرهای سریع توصیه شده",
    "Quick connect": "اتصال سریع",
    "Renew session tokens or switch account":
        "نمادهای جلسه را تمدید کنید یا حساب را تغییر دهید",
    "Restore": "بازیابی کنید",
    "Remaining traffic:": "ترافیک باقیمانده:",
    "Saved subscriptions": "اشتراک های ذخیره شده",
    "Open Mobile Hotspot": "هات اسپات موبایل را باز کنید",
    "Routes from Xray, WARP and MASQUE configurations. Connection is shown after traffic verification.":
        "مسیرها از پیکربندی های Xray، WARP و MASQUE. اتصال پس از تأیید ترافیک نشان داده می شود.",
    "Per-app VPN bypass": "دور زدن VPN برای هر برنامه",
    "Scan QR": "اسکن QR",
    "Select": "انتخاب کنید",
    "Not supported on this platform.": "در این پلتفرم پشتیبانی نمی شود.",
    "Save Quota": "ذخیره سهمیه",
    "Scan subscription QR": "اسکن QR اشتراک",
    "Security session expired; please sign in again to use servers.":
        "جلسه امنیتی منقضی شد. لطفاً برای استفاده از سرورها دوباره وارد شوید.",
    "Re-login to account": "دوباره وارد حساب کاربری شوید",
    "Session Duration": "مدت زمان جلسه",
    "Save securely": "ایمن ذخیره کنید",
    "Query latest session and traffic quota":
        "آخرین جلسه و سهمیه ترافیک را استعلام کنید",
    "Run Full Audit": "حسابرسی کامل را اجرا کنید",
    "Select applications to bypass the VPN tunnel and connect directly to the internet.":
        "برنامه هایی را برای دور زدن تونل VPN و اتصال مستقیم به اینترنت انتخاب کنید.",
    "Session Download:": "دانلود جلسه:",
    "Service Credentials & Keys": "مدارک و کلیدهای خدمات",
    "Selected apps use the physical network directly. Other apps continue using the VPN.":
        "برنامه های انتخاب شده مستقیماً از شبکه فیزیکی استفاده می کنند. سایر برنامه ها همچنان از VPN استفاده می کنند.",
    "Settings": "تنظیمات",
    "Select Surfshark Protocol": "Surfshark Protocol را انتخاب کنید",
    "Session Upload:": "آپلود جلسه:",
    "Set Quota": "تعیین سهمیه",
    "Service Password / Private Key": "رمز عبور سرویس / کلید خصوصی",
    "Sign In": "وارد شوید",
    "Show servers": "نمایش سرورها",
    "Select VPN Provider": "VPN Provider را انتخاب کنید",
    "Show All Servers": "نمایش همه سرورها",
    "Service Username / Key ID": "نام کاربری سرویس / شناسه کلید",
    "Share secure encrypted tunnel with phones & tablets":
        "تونل رمزگذاری شده ایمن را با تلفن و تبلت به اشتراک بگذارید",
    "Split Tunneling": "اسپلیت تونل",
    "Route chosen applications or network subnets outside the VPN.":
        "برنامه‌های کاربردی یا زیرشبکه‌های شبکه انتخابی را خارج از VPN مسیریابی کنید.",
    "Start Speed Test": "تست سرعت را شروع کنید",
    "Speed Test History": "تاریخچه تست سرعت",
    "Select a location or use fastest server":
        "یک مکان انتخاب کنید یا از سریعترین سرور استفاده کنید",
    "Unknown": "ناشناس",
    "Test all": "همه رو تست کن",
    "Selected country IP ranges bypass the VPN. Reconnect after changing rules. Domain-only rules need DNS-aware routing.":
        "محدوده IP کشور انتخاب شده VPN را دور می زند. پس از تغییر قوانین، دوباره وصل شوید. قوانین فقط دامنه نیاز به مسیریابی DNS-aware دارند.",
    "UNKNOWN": "ناشناخته",
    "Sign in to activate Firefox tunnel and view data quota.":
        "برای فعال کردن تونل فایرفاکس و مشاهده سهمیه داده وارد سیستم شوید.",
    "The previous VPN operation timed out. You can try again.":
        "زمان عملیات VPN قبلی تمام شد. می توانید دوباره امتحان کنید.",
    "Sign In / Account": "ورود به سیستم / حساب کاربری",
    "To prevent Android from killing the VPN connection in background, disable battery optimization for this app.":
        "برای جلوگیری از قطع اتصال VPN در پس زمینه اندروید، بهینه سازی باتری را برای این برنامه غیرفعال کنید.",
    "Unlimited (Off)": "نامحدود (خاموش)",
    "Smart Service Suitability": "مناسب بودن سرویس هوشمند",
    "Speed report copied to clipboard!": "گزارش سرعت در کلیپ بورد کپی شد!",
    "Sign In to Harmoney Pro": "وارد Harmoney Pro شوید",
    "Surfshark Service Account": "حساب خدمات Surfshark",
    "System Apps": "برنامه های سیستم",
    "Sign in": "وارد شوید",
    "Upload": "آپلود کنید",
    "Sort by latency": "مرتب سازی بر اساس تاخیر",
    "Temporary isolated guest Wi-Fi with automatic expiry and subnet isolation.":
        "Wi-Fi مهمان ایزوله موقت با انقضای خودکار و ایزوله زیر شبکه.",
    "Session Expired": "جلسه منقضی شد",
    "Verify": "تأیید کنید",
    "User Apps": "برنامه های کاربر",
    "Theme": "موضوع",
    "Update Country Rules": "قوانین کشور را به روز کنید",
    "Traffic Analytics": "تجزیه و تحلیل ترافیک",
    "VPN service credentials saved securely.":
        "اعتبار خدمات VPN به طور ایمن ذخیره می شود.",
    "Windows per-app bypass routes selected apps directly through the physical adapter, independent of the active VPN protocol. Windows build support and the privileged MilMit service are required.":
        "دور زدن ویندوز برای هر برنامه، برنامه های انتخاب شده را مستقیماً از طریق آداپتور فیزیکی، مستقل از پروتکل فعال VPN، مسیریابی می کند. پشتیبانی از ساخت ویندوز و سرویس ممتاز MilMit مورد نیاز است.",
    "WFP applies the rules independently of IKEv2, WireGuard, OpenVPN, and Xray. UDP relay is not complete yet, so apps requiring UDP will not be fully bypassed.":
        "WFP قوانین را مستقل از IKEv2، WireGuard، OpenVPN و Xray اعمال می کند. رله UDP هنوز کامل نشده است، بنابراین برنامه هایی که به UDP نیاز دارند به طور کامل دور زده نمی شوند.",
    "VPN-to-hotspot ICS binding verified.":
        "اتصال ICS VPN به نقطه اتصال تأیید شد.",
    "Unlimited quota": "سهمیه نامحدود",
    "Tunnel-managed DNS; reconnect to apply":
        "DNS مدیریت شده توسط تونل؛ برای اعمال مجدد وصل شوید",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Windows IKEv2 route injection remains IPv4-only. Reconnect after changing rules.":
        "مسیرهای Xray به طور مستقیم محدوده IPv4/IPv6 و لیست دامنه ایرانی همراه را انتخاب کرده است. تزریق مسیر IKEv2 ویندوز فقط IPv4 باقی می ماند. پس از تغییر قوانین، دوباره وصل شوید.",
    "You will receive visual alerts when reaching this limit.":
        "هنگام رسیدن به این حد، هشدارهای بصری دریافت خواهید کرد.",
    "Service username and password required for handshakes":
        "نام کاربری و رمز عبور سرویس برای دست دادن مورد نیاز است",
    "VPN Hotspot Sharing (Windows ICS)":
        "اشتراک گذاری هات اسپات VPN (ویندوز ICS)",
    "Uses Windows native per-process routing to send selected apps directly over your physical network adapter. Requires a compatible Windows build and the MilMit VPN service.":
        "از مسیریابی هر فرآیند بومی ویندوز برای ارسال برنامه های انتخابی مستقیماً روی آداپتور فیزیکی شبکه شما استفاده می کند. به یک ساخت ویندوز سازگار و سرویس MilMit VPN نیاز دارد.",
    "Custom Bypass Rules": "قوانین دور زدن سفارشی",
    "Protocol": "پروتکل",
    "Test": "آزمایش",
    "No imported profiles found.\nImport a ZIP archive from Surfshark Manual Setup.":
        "هیچ پروفایلی وارد نشده است.\nیک فایل ZIP را از بخش راه‌اندازی دستی Surfshark وارد کنید.",
    "اسکن خودکار این دستگاه": "اسکن خودکار این دستگاه",
    "اعمال در تنظیمات": "اعمال در تنظیمات",
    "انصراف": "انصراف",
    "این شناسه به عنوان اثرانگشت سخت‌افزاری (Hardware Device ID) برای احراز هویت دستگاه در سرور استفاده می‌شود. می‌توانید مقادیر را تغییر دهید یا خودکار دریافت کنید:":
        "این شناسه به عنوان اثرانگشت سخت‌افزاری (Hardware Device ID) برای احراز هویت دستگاه در سرور استفاده می‌شود. می‌توانید مقادیر را تغییر دهید یا خودکار دریافت کنید:",
    "باز کردن پوشه": "باز کردن پوشه",
    "برای بارگذاری سرورها، اشتراک خود را وارد کنید":
        "برای بارگذاری سرورها، اشتراک خود را وارد کنید",
    "بستن": "بستن",
    "تست اتصال": "تست اتصال",
    "تنظیمات اتصال سرویس": "تنظیمات اتصال سرویس",
    "تنظیمات سرور": "تنظیمات سرور",
    "تولید شناسه سخت‌افزاری دستگاه": "تولید شناسه سخت‌افزاری دستگاه",
    "جهت اتصال آسان‌تر از خط فرمان (رمز عبور متن آشکار ذخیره می‌شود)":
        "جهت اتصال آسان‌تر از خط فرمان (رمز عبور متن آشکار ذخیره می‌شود)",
    "خروجی‌گرفتن از پروفایل‌های اتصال": "خروجی‌گرفتن از پروفایل‌های اتصال",
    "دریافت خودکار از سخت‌افزار سیستم": "دریافت خودکار از سخت‌افزار سیستم",
    "ذخیره تنظیمات": "ذخیره تنظیمات",
    "ذخیره نام کاربری و رمز عبور در فایل متنی":
        "ذخیره نام کاربری و رمز عبور در فایل متنی",
    "رمز عبور (Password)": "رمز عبور (Password)",
    "شروع استخراج": "شروع استخراج",
    "شناسه سخت‌افزاری به مقدار پیش‌فرض سرور بازنشانی شد.":
        "شناسه سخت‌افزاری به مقدار پیش‌فرض سرور بازنشانی شد.",
    "شناسه سخت‌افزاری دستگاه با موفقیت تنظیم شد.":
        "شناسه سخت‌افزاری دستگاه با موفقیت تنظیم شد.",
    "شناسه نهایی تولیدشده (SHA-256):": "شناسه نهایی تولیدشده (SHA-256):",
    "شناسه پیش‌فرض سرور": "شناسه پیش‌فرض سرور",
    "فایل‌ها با موفقیت استخراج شدند.": "فایل‌ها با موفقیت استخراج شدند.",
    "محل ذخیره پیش‌فرض:": "محل ذخیره پیش‌فرض:",
    "نام کاربری (Username)": "نام کاربری (Username)",
    "ورود با موفقیت انجام شد و فهرست سرورها به‌روزرسانی گردید.":
        "ورود با موفقیت انجام شد و فهرست سرورها به‌روزرسانی گردید.",
    "ورود به حساب Harmoney Pro": "ورود به حساب Harmoney Pro",
    "ورود مقادیر و ساخت دستی": "ورود مقادیر و ساخت دستی",
    "ورود و بارگذاری سرورها": "ورود و بارگذاری سرورها",
    "پیش‌فرض سرور": "پیش‌فرض سرور",
    "پیکربندی سرور (پیش‌فرض سورس کد - فقط در حالت Debug)":
        "پیکربندی سرور (پیش‌فرض سورس کد - فقط در حالت Debug)",
    "Download Harmoney Pro": "دانلود Harmoney Pro",
    "More protocols and connection options":
        "\u067e\u0631\u0648\u062a\u06a9\u0644\u200c\u0647\u0627\u0020\u0648\u0020\u06af\u0632\u06cc\u0646\u0647\u200c\u0647\u0627\u06cc\u0020\u0627\u062a\u0635\u0627\u0644\u0020\u0628\u06cc\u0634\u062a\u0631",
    "The Harmoney Pro download link is not available yet.":
        "\u0644\u06cc\u0646\u06a9\u0020\u062f\u0627\u0646\u0644\u0648\u062f\u0020\u0048\u0061\u0072\u006d\u006f\u006e\u0065\u0079\u0020\u0050\u0072\u006f\u0020\u0647\u0646\u0648\u0632\u0020\u062f\u0631\u0020\u062f\u0633\u062a\u0631\u0633\u0020\u0646\u06cc\u0633\u062a\u002e",
    "Select connection service": "انتخاب سرویس اتصال",
    "Connection service": "سرویس اتصال",
    "Personal subscriptions": "اشتراک‌های شخصی",
    "Smart routing and personal subscriptions":
        "مسیریابی هوشمند و اشتراک‌های شخصی",
    "Lightweight Firefox VPN tunnel": "تونل سبک Firefox VPN",
    "Rules apply to the active VPN route. UDP relay is not complete yet; apps requiring UDP may not be fully bypassed.":
        "قوانین روی مسیر VPN فعال اعمال می‌شوند. رله UDP هنوز کامل نشده است؛ ممکن است برنامه‌هایی که به UDP نیاز دارند به‌طور کامل از تونل مستثنا نشوند.",
    "Hotspot sharing preference saved.":
        "تنظیمات اشتراک‌گذاری نقطه اتصال ذخیره شد.",
    "Save preference": "ذخیره تنظیمات",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Reconnect after changing rules.":
        "Xray بازه‌های انتخاب‌شده IPv4/IPv6 و فهرست دامنه‌های ایرانی همراه برنامه را مستقیم مسیریابی می‌کند. پس از تغییر قوانین دوباره متصل شوید.",
    "Auditing…": "در حال بررسی…",
    "Checking account…": "در حال بررسی حساب…",
    "Checking secure credential vault…": "در حال بررسی مخزن امن اطلاعات ورود…",
    "Checking…": "در حال بررسی…",
    "Disconnect is still being processed…":
        "درخواست قطع اتصال هنوز در حال پردازش است…",
    "Disconnect requested…": "درخواست قطع اتصال ثبت شد…",
    "Disconnecting…": "در حال قطع اتصال…",
    "Importing…": "در حال وارد کردن…",
    "Signing in…": "در حال ورود…",
    "Starting connection…": "در حال برقراری اتصال…",
    "Updating…": "در حال به‌روزرسانی…",
    "Working…": "در حال انجام…",
    "Establishing secure tunnel…": "در حال ایجاد تونل امن…",
  },
  "ar": {
    "0 GB (Off)": "المباشر 0 جيجابايت (إيقاف)",
    "100 GB": "100 جيجابايت",
    "200 GB": "200 جيجابايت",
    "50 GB": "50 جيجابايت",
    "A calmer connection. A brighter world.":
        "اتصال أكثر هدوءًا. عالم أكثر إشراقا.",
    "Add": "إضافة",
    "Add CIDR rule": "إضافة قاعدة CIDR",
    "Add Policy": "إضافة سياسة",
    "Add Routing Policy Rule": "إضافة قاعدة سياسة التوجيه",
    "Add split-tunnel CIDR": "إضافة نفق مقسم CIDR",
    "Advanced Policy Rules": "قواعد السياسة المتقدمة",
    "Advanced Routing & Protection": "التوجيه والحماية المتقدمة",
    "Allow IPv6": "السماح IPv6",
    "Allow Iran traffic during Lockdown":
        "السماح بحركة المرور في إيران أثناء الإغلاق",
    "Always-on VPN": "VPN",
    "Always-on and Lockdown cover Firefox, WireGuard, IKEv2 and OpenVPN. DNS and IPv6 policies are enforced by each active tunnel profile.":
        "غطاء التشغيل الدائم والقفل Firefox وWireGuard وIKEv2 وOpenVPN. يتم فرض سياسات DNS وIPv6 بواسطة كل ملف تعريف نفق نشط.",
    "Always-on and Lockdown cover supported VPN connections. DNS and IPv6 policies are enforced by the active tunnel.":
        "غطاء التشغيل الدائم والقفل يدعم اتصالات VPN. يتم فرض سياسات DNS وIPv6 بواسطة النفق النشط.",
    "Android Protection": "حماية Android",
    "Android app bypass applies after reconnecting the VPN.":
        "يتم تطبيق تجاوز تطبيق Android بعد إعادة توصيل VPN.",
    "Auto (Fallback)": "تلقائي (احتياطي)",
    "Block Destination": "كتلة الوجهة",
    "Block IPv6 (Leak Protection)": "Block IPv6 (الحماية من التسرب)",
    "Block Internet Access": "حظر الوصول إلى الإنترنت",
    "Block QUIC (UDP 443)": "بلوك QUIC (UDP 443)",
    "Block all internet leaks when the VPN drops unexpectedly":
        "منع جميع تسربات الإنترنت عندما يسقط VPN بشكل غير متوقع",
    "Block connections without VPN": "حظر الاتصالات بدون تغطية بروتوكول VPN",
    "Block internet": "حظر الإنترنت",
    "Bypass VPN": "تجاوز VPN",
    "Cancel": "إلغاء",
    "Client Isolation": "عزل العميل",
    "Close": "إغلاق",
    "Connection": "اتصال",
    "Console output copied to clipboard.": "إلى الحافظة.",
    "Country destinations bypass the VPN directly through the ISP; other traffic remains inside the VPN.":
        "تتجاوز وجهات الدولة VPN مباشرة من خلال مزود خدمة الإنترنت؛ تظل حركة المرور الأخرى داخل VPN.",
    "Create": "إنشاء",
    "Create new list": "إنشاء قائمة جديدة",
    "Custom Bypass Rules": "قواعد التجاوز المخصصة",
    "Custom Location Lists": "قوائم المواقع المخصصة",
    "Default Hotspot Route": "مسار نقطة الاتصال الافتراضي",
    "Deselect all": "إلغاء تحديد الكل",
    "Diagnostic Terminal Output": "تم نسخ إخراج وحدة التحكم",
    "Diagnostics & Health": "التشخيص والصحة",
    "Direct (Bypass VPN)": "مباشر (تجاوز VPN)",
    "Domains, IPv4 addresses or CIDRs that always bypass the VPN":
        "المجالات أو عناوين IPv4 أو CIDRs التي تتجاوز دائمًا VPN",
    "Done": "تم",
    "Emergency Stop": "توقف الطوارئ",
    "Emergency Stop executed: Processes terminated and physical network unjammed.":
        "تم تنفيذ إيقاف الطوارئ: تم إنهاء العمليات وعدم تشويش الشبكة الفعلية. خطأ إيقاف الطوارئ",
    "Endpoint Candidates": "مرشحو نقطة النهاية",
    "Enforce Quota": "فرض الحصة",
    "Error": "خطأ",
    "Explain": "شرح سياسة",
    "Explain why a destination routes via VPN or Direct ISP, with rule priority matching.":
        "اشرح سبب توجيه الوجهة عبر VPN أو Direct ISP، مع مطابقة أولوية القاعدة.",
    "Export the selected server list as JSON and TXT files.":
        "قم بتصدير قائمة الخادم المحددة كملفات JSON وTXT.",
    "FASTEST ⚡": "الأسرع ⚡",
    "Firefox Account": "حساب Firefox",
    "Firefox VPN": "Firefox VPN",
    "Firefox data allowance": "Firefox بدل البيانات",
    "Force HTTPS traffic through TCP/TLS for consistent filtering.":
        "فرض حركة مرور HTTPS من خلال TCP/TLS للحصول على تصفية متسقة.",
    "Force Hotspot VPN DNS": "فرض نقطة الاتصال VPN DNS",
    "Force VPN": "فرض VPN",
    "Force VPN Encrypted": "فرض VPN مشفر",
    "Guest Hotspot": "نقطة اتصال الضيف",
    "HTTP/2 CONNECT": "HTTP/2 ربط",
    "Harmoney": "Harmoney",
    "Harmoney Pro": "Harmoney Pro",
    "Harmoney Smart": "Harmoney Smart",
    "Host and Hotspot clients": "عملاء المضيف ونقطة الاتصال",
    "Host machine only": "الجهاز المضيف فقط عملاء",
    "Hotspot & Devices": "نقطة الاتصال والأجهزة",
    "Hotspot Doctor & Diagnostics": "إصلاح نقطة الاتصال والتشخيص",
    "Hotspot IPv6 Policy": "نقطة الاتصال IPv6",
    "Hotspot clients only": "Hotspot فقط",
    "IKEv2": "IKEv2",
    "IPv6 leak protection": "IPv6 حماية من التسرب",
    "Import ZIP Archive": "استيراد أرشيف ZIP",
    "Inspect XFRM interface, table 220, IP rules, and verify live connectivity safely.":
        "افحص واجهة XFRM والجدول 220 وقواعد IP وتحقق من الاتصال المباشر بأمان.",
    "Keep domestic services and banking reachable when the VPN drops":
        "اجعل الخدمات المحلية والخدمات المصرفية متاحة عندما يسقط VPN",
    "Launch direct": "إطلاق",
    "Live Connection Logs (Stream)": "سجلات الاتصال المباشر (الدفق)",
    "Live Logs": "السجلات المباشرة",
    "Live Verification": "التحقق المباشر",
    "Live connection events from all providers and protocols":
        "أحداث الاتصال المباشر من جميع الموفرين والبروتوكولات",
    "Lockdown mode (Kill Switch)": "وضع القفل (مفتاح القتل)",
    "Logs copied to clipboard (secrets redacted).":
        "تم نسخ السجلات إلى الحافظة (تم حجب الأسرار). تم تصدير حزمة الدعم",
    "Manage VPN Profiles": "إدارة ملفات تعريف VPN",
    "Manage connected devices, bandwidth quotas, guest Wi-Fi, and routing policies.":
        "إدارة الأجهزة المتصلة وحصص النطاق الترددي وWi-Fi الضيف وسياسات التوجيه.",
    "Mbps": "Mbps",
    "Network Subnets (CIDRs)": "الشبكات الفرعية للشبكة (CIDRs)",
    "Network unjammed: Kill switch, routes, and XFRM interfaces restored to normal.":
        "الشبكة غير منحشرة: تم استعادة مفتاح القفل والمسارات وواجهات XFRM إلى وضعها الطبيعي.",
    "New Custom List": "قائمة مخصصة جديدة",
    "No CIDR rules yet.": "لا توجد قواعد CIDR حتى الآن.",
    "No advanced policy rules configured.":
        "لم يتم تكوين قواعد السياسة المتقدمة.",
    "No custom bypass rules.": "لا توجد قواعد تجاوز مخصصة.",
    "No custom lists created yet.": "لم يتم إنشاء قوائم مخصصة بعد.",
    "No devices currently connected to hotspot.":
        "لا توجد أجهزة متصلة حاليًا بنقطة الاتصال. سياسة",
    "No endpoint candidates configured.": "لم يتم تكوين أي مرشح لنقطة النهاية.",
    "No matching events yet. Start a VPN connection to collect logs.":
        "لا توجد أحداث مطابقة حتى الآن. ابدأ اتصال VPN لتجميع السجلات.",
    "Notify only": "قم بإبلاغ",
    "Offline cache ready": "ذاكرة التخزين المؤقت دون اتصال جاهزة",
    "OpenVPN": "OpenVPN",
    "Operation failed": "فشلت عملية",
    "Overall Tunnel Health": "الصحة العامة للأنفاق",
    "Pause Device Connection": "إيقاف اتصال الجهاز مؤقتًا",
    "Ping": "Ping",
    "Prevent connected hotspot clients from communicating directly.":
        "منع عملاء نقطة الاتصال المتصلة من الاتصال مباشرة. سياسة",
    "Protected Hotspot Options": "خيارات نقطة الاتصال المحمية",
    "Protection HUD": "لوحة معلومات الحماية",
    "Protection settings are applied by Android VpnService and take effect after reconnecting.":
        "يتم تطبيق إعدادات الحماية بواسطة Android VpnService وتصبح نافذة المفعول بعد إعادة الاتصال.",
    "Protocol": "بروتوكول",
    "Provider": "مزود",
    "Queued…": "في قائمة الانتظار...",
    "Quota Exceeded Action:": "الإجراء الذي تم تجاوز الحصة النسبية:",
    "Reconnect the VPN to apply Android CIDR routes.":
        "أعد توصيل VPN لتطبيق مسارات Android CIDR.",
    "Redirect all device DNS queries to Surfshark DNS.":
        "إعادة توجيه جميع استعلامات DNS الخاصة بالجهاز إلى Surfshark DNS.",
    "Redirect device DNS queries through the selected VPN.":
        "إعادة توجيه استعلامات DNS للجهاز من خلال VPN المحدد.",
    "Refresh": "ينعش",
    "Repair Hotspot Routing": "إصلاح توجيه نقطة الاتصال",
    "Route Explain": "شرح المسار",
    "Route IPv6 through supported tunnels; reconnect to apply":
        "توجيه IPv6 عبر الأنفاق المدعومة؛ أعد الاتصال لتطبيق",
    "Route Table & XFRM Verification": "جدول التوجيه والتحقق من XFRM",
    "Route specific destinations through Direct, Force VPN, or Block.":
        "قم بتوجيه وجهات محددة من خلال Direct أو Force VPN أو Block.",
    "Route test": "اختبار المسار",
    "Routing Policy:": "سياسة التوجيه:",
    "Run Hotspot Doctor": "تشغيل Hotspot Doctor",
    "Safe Apply & LKG": "التطبيق الآمن و LKG",
    "Save": "حفظ",
    "Secure VPN DNS": "آمن VPN DNS",
    "Select all": "حدد الكل",
    "Start Guest": "بدء تشغيل الضيف",
    "Start Guest Hotspot": "بدء نقطة اتصال الضيف",
    "Start Guest Wi-Fi": "بدء الضيف Wi-Fi",
    "Stop Guest": "إيقاف الضيف",
    "Support bundle exported and copied to clipboard.": "ونسخها إلى الحافظة.",
    "Surfshark": "Surfshark",
    "Talker Logs": "سجلات المتكلم",
    "Throttle to 128kbit/s": "فقط بالضغط على 128 كيلوبت/ثانية",
    "Tunnel path audits, leak tests, latency probes, and runtime telemetry":
        "عمليات تدقيق مسار النفق، واختبارات التسرب، وتحقيقات زمن الوصول، وقياس وقت التشغيل عن بعد",
    "VPN Debug Logs": "VPN سجلات التصحيح",
    "WireGuard": "WireGuard",
    "by MilMit": "بواسطة MilMit",
    "اسکن خودکار این دستگاه": "المسح التلقائي لهذا الجهاز",
    "اعمال در تنظیمات": "تنطبق على الإعدادات",
    "انصراف": "إلغاء",
    "این شناسه به عنوان اثرانگشت سخت‌افزاری (Hardware Device ID) برای احراز هویت دستگاه در سرور استفاده می‌شود. می‌توانید مقادیر را تغییر دهید یا خودکار دریافت کنید:":
        "يتم استخدام هذا المعرف كبصمة جهاز (Hardware Device ID) لمصادقة الجهاز على الخادم. يمكنك تغيير القيم أو الحصول على تلقائي:",
    "باز کردن پوشه": "فتح المجلد",
    "برای بارگذاری سرورها، اشتراک خود را وارد کنید":
        "تسجيل الدخول لتحميل السيرفرات",
    "بستن": "إغلاق",
    "تست اتصال": "اختبار الاتصال",
    "تنظیمات اتصال سرویس": "إعدادات اتصال الخدمة",
    "تنظیمات سرور": "إعدادات الخادم",
    "تولید شناسه سخت‌افزاری دستگاه": "إنشاء معرف جهاز الجهاز",
    "جهت اتصال آسان‌تر از خط فرمان (رمز عبور متن آشکار ذخیره می‌شود)":
        "لتسهيل الاتصال من سطر الأوامر (يتم تخزين كلمة المرور في نص واضح)",
    "خروجی‌گرفتن از پروفایل‌های اتصال": "إخراج ملفات تعريف الاتصال",
    "دریافت خودکار از سخت‌افزار سیستم": "الحصول تلقائيًا من أجهزة النظام",
    "ذخیره تنظیمات": "حفظ الإعدادات",
    "ذخیره نام کاربری و رمز عبور در فایل متنی":
        "حفظ اسم المستخدم وكلمة المرور في ملف نصي",
    "رمز عبور (Password)": "كلمة المرور",
    "شروع استخراج": "بدء الاستخراج",
    "شناسه سخت‌افزاری به مقدار پیش‌فرض سرور بازنشانی شد.":
        "إعادة تعيين معرف الأجهزة إلى القيمة الافتراضية للخادم. إعدادات اتصال الخدمة",
    "شناسه سخت‌افزاری دستگاه با موفقیت تنظیم شد.":
        "تم تعيين معرف الجهاز الخاص بالجهاز بنجاح.",
    "شناسه نهایی تولیدشده (SHA-256):": "تم إنشاء المعرف النهائي (SHA-256):",
    "شناسه پیش‌فرض سرور": "معرف الخادم الافتراضي",
    "فایل‌ها با موفقیت استخراج شدند.": "تم استخراج الملفات بنجاح.",
    "محل ذخیره پیش‌فرض:": "موقع التخزين الافتراضي:",
    "نام کاربری (Username)": "اسم المستخدم",
    "ورود با موفقیت انجام شد و فهرست سرورها به‌روزرسانی گردید.":
        "تم تسجيل الدخول بنجاح وتم تحديث قائمة الخوادم.",
    "ورود به حساب Harmoney Pro": "تسجيل الدخول Harmoney Pro",
    "ورود مقادیر و ساخت دستی": "أدخل القيم وقم بإنشاء الخادم الافتراضي",
    "ورود و بارگذاری سرورها": "تسجيل الدخول وتحميل الخوادم",
    "پیش‌فرض سرور": "يدويًا",
    "پیکربندی سرور (پیش‌فرض سورس کد - فقط در حالت Debug)":
        "تكوين الخادم (كود المصدر الافتراضي - فقط في وضع التصحيح)",
    "-- ms": "-- آنسة",
    "A VPN operation is already running. Please wait for its status to update.":
        "عملية VPN قيد التشغيل بالفعل. يرجى الانتظار حتى يتم تحديث حالته.",
    "ACTIVE": "نشيط",
    "Active": "نشيط",
    "Add subscription": "إضافة الاشتراك",
    "Add an application before enabling app bypass.":
        "أضف تطبيقًا قبل تمكين تجاوز التطبيق.",
    "Add an HTTP or HTTPS subscription URL. Links are stored securely on this device.":
        "أضف عنوان URL لاشتراك HTTP أو HTTPS. يتم تخزين الروابط بشكل آمن على هذا الجهاز.",
    "Add at least one application to turn this on.":
        "أضف تطبيقًا واحدًا على الأقل لتشغيل هذا.",
    "Active Surfshark Protocol": "بروتوكول Surfshark النشط",
    "Add application (.exe)": "إضافة تطبيق (.exe)",
    "App language": "لغة التطبيق",
    "All": "الجميع",
    "Applications": "التطبيقات",
    "CONNECTED": "متصل",
    "API Settings": "إعدادات واجهة برمجة التطبيقات",
    "Bypass": "تجاوز",
    "Cancel Test": "إلغاء الاختبار",
    "CONNECT": "يتصل",
    "Android Lockdown is active": "Android Lockdown نشط",
    "Clear": "واضح",
    "Bypassing": "تجاوز",
    "Configure": "تكوين",
    "Battery Optimization Active (Doze Mode)":
        "تحسين البطارية نشط (وضع التجريف)",
    "Android supports IPv4 and IPv6 CIDR bypass. Reconnect the VPN after changing these routes; app bypass also takes effect after reconnect.":
        "يدعم Android تجاوز IPv4 وIPv6 CIDR. أعد توصيل VPN بعد تغيير هذه المسارات؛ يسري مفعول تجاوز التطبيق أيضًا بعد إعادة الاتصال.",
    "Connected": "متصل",
    "Copied!": "منسوخ!",
    "Copy Report": "نسخ التقرير",
    "Country & App Bypass": "تجاوز البلد والتطبيق",
    "Configures Windows ICS for the VPN adapter when Mobile Hotspot is active. The app verifies the ICS binding; client Internet traffic still needs an end-to-end check.":
        "يقوم بتكوين Windows ICS لمحول VPN عندما تكون Mobile Hotspot نشطة. يتحقق التطبيق من ربط ICS؛ لا تزال حركة مرور العميل على الإنترنت بحاجة إلى فحص شامل.",
    "Disable Optimization": "تعطيل التحسين",
    "Download": "تحميل",
    "Country bypass DAT rules updated. Reconnect VPN to apply.":
        "تم تحديث قواعد DAT لتجاوز البلد. أعد توصيل VPN للتقديم.",
    "Check status": "التحقق من الحالة",
    "Disconnect": "قطع الاتصال",
    "Disabled: all traffic routes securely through encrypted VPN tunnel.":
        "معطل: جميع مسارات حركة المرور بشكل آمن من خلال نفق VPN المشفر.",
    "Change": "يتغير",
    "CONNECTING": "الاتصال",
    "Choose your desired VPN network provider": "اختر مزود شبكة VPN الذي تريده",
    "Clear stored credentials from this device":
        "امسح بيانات الاعتماد المخزنة من هذا الجهاز",
    "Choose QR image": "اختر صورة QR",
    "Disconnect is taking longer than expected. You can try again.":
        "يستغرق قطع الاتصال وقتًا أطول من المتوقع. يمكنك المحاولة مرة أخرى.",
    "Enable Lockdown in Android VPN settings":
        "قم بتمكين Lockdown في إعدادات Android VPN",
    "Enable Hotspot Sharing (ICS)": "تمكين مشاركة نقطة الاتصال (ICS)",
    "DISCONNECTED": "غير متصل",
    "Enable app bypass": "تمكين تجاوز التطبيق",
    "Disabled": "عاجز",
    "Country IPv4 ranges bypass the VPN after reconnecting. App bypass uses the Windows physical interface and requires the MilMit service.":
        "تتجاوز نطاقات IPv4 الخاصة بالبلد شبكة VPN بعد إعادة الاتصال. يستخدم تجاوز التطبيق واجهة Windows الفعلية ويتطلب خدمة MilMit.",
    "Credentials encrypted in privileged platform keystore":
        "بيانات الاعتماد مشفرة في مخزن مفاتيح النظام الأساسي المميز",
    "Encrypted tunnel verified with zero packet leakage.":
        "تم التحقق من النفق المشفر مع عدم وجود أي تسرب للحزم.",
    "Enable Split Tunneling": "تمكين تقسيم الأنفاق",
    "DISCONNECTING": "قطع الاتصال",
    "Firefox Account Email / User":
        "البريد الإلكتروني / المستخدم لحساب فايرفوكس",
    "Connecting": "الاتصال",
    "FireTunnel Token / Password": "رمز FireTunnel / كلمة المرور",
    "Favorites": "المفضلة",
    "Firefox Account credentials are sent directly to Mozilla by the local Windows helper. The password is not saved; only the account tokens needed for future connections are stored locally.":
        "يتم إرسال بيانات اعتماد حساب Firefox مباشرة إلى Mozilla بواسطة مساعد Windows المحلي. لا يتم حفظ كلمة المرور؛ يتم تخزين رموز الحساب المميزة اللازمة للاتصالات المستقبلية محليًا فقط.",
    "Export Servers": "خوادم التصدير",
    "Firefox VPN Token & Auth": "رمز Firefox VPN والمصادقة",
    "Firefox VPN Account": "حساب فايرفوكس VPN",
    "Firefox Account credentials are sent directly to Mozilla by the native Android engine. Encrypted tokens never enter Flutter storage.":
        "يتم إرسال بيانات اعتماد حساب Firefox مباشرة إلى Mozilla بواسطة محرك Android الأصلي. لا تدخل الرموز المميزة مطلقًا إلى مخزن Flutter.",
    "Cisco": "سيسكو",
    "Inactive": "غير نشط",
    "Import ZIP": "استيراد الرمز البريدي",
    "Enable per-app bypass": "تمكين التجاوز لكل تطبيق",
    "Harmoney Pro Service": "خدمة هارموني برو",
    "Hotspot Inactive": "نقطة الاتصال غير نشطة",
    "Harmoney Pro Connection Error": "خطأ في اتصال Harmony Pro",
    "Harmoney Pro Sign In Required": "مطلوب تسجيل الدخول إلى Harmoney Pro",
    "Last Speed Benchmark:": "معيار السرعة الأخيرة:",
    "Enabled for Harmoney": "ممكّن للانسجام",
    "KEY REQUIRED": "المفتاح مطلوب",
    "Live Active": "عش نشطًا",
    "Hardware Profile: Dell Latitude 7210 & Intel / Cellular LTE":
        "ملف تعريف الأجهزة: Dell Latitude 7210 وIntel / Cellular LTE",
    "FireTunnel authenticates with Firefox Accounts. Credentials are sent only to the root-isolated native helper; tokens never enter Flutter storage.":
        "تتم مصادقة FireTunnel باستخدام حسابات Firefox. يتم إرسال بيانات الاعتماد فقط إلى المساعد الأصلي المعزول بالجذر؛ لا تدخل الرموز المميزة أبدًا إلى مخزن Flutter.",
    "Load apps": "تحميل التطبيقات",
    "Locations & Routes": "المواقع والطرق",
    "Hardware-backed encryption: Credentials are encrypted in platform vault.":
        "التشفير المدعوم بالأجهزة: يتم تشفير بيانات الاعتماد في قبو النظام الأساسي.",
    "Firefox VPN protocol": "بروتوكول فايرفوكس VPN",
    "Log in to account": "تسجيل الدخول إلى الحساب",
    "Logout": "تسجيل الخروج",
    "No Limit Set": "لا يوجد حد محدد",
    "Live Real-Time Speed": "عش السرعة في الوقت الحقيقي",
    "No active hotspot interface detected on system.":
        "لم يتم اكتشاف واجهة نقطة اتصال نشطة على النظام.",
    "Manage Firefox VPN Account": "إدارة حساب Firefox VPN",
    "Harmoney Anti-Censorship Core": "هارموني الأساسية لمكافحة الرقابة",
    "Manage": "يدير",
    "Monthly Allowance": "البدل الشهري",
    "No favorite servers.": "لا توجد خوادم مفضلة.",
    "History": "تاريخ",
    "No imported profiles found.\\nImport a ZIP archive from Surfshark Manual Setup.":
        "لم يتم العثور على ملفات تعريف مستوردة.\\nقم باستيراد أرشيف ZIP من إعداد Surfshark اليدوي.",
    "Manage Account": "إدارة الحساب",
    "Live bandwidth, data accounting & quota":
        "عرض النطاق الترددي المباشر ومحاسبة البيانات والحصص",
    "Load installed applications to configure per-app bypass.":
        "قم بتحميل التطبيقات المثبتة لتكوين تجاوز لكل تطبيق.",
    "No applications selected.": "لم يتم تحديد أي تطبيقات.",
    "Open": "يفتح",
    "No speed tests recorded yet.": "لم يتم تسجيل اختبارات السرعة حتى الآن.",
    "No subscriptions added yet.": "لم تتم إضافة أي اشتراكات حتى الآن.",
    "Manage connection, security, and appearance":
        "إدارة الاتصال والأمن والمظهر",
    "On Android and Linux the selected subscription is used, but the VPN core may choose a different node from it.":
        "في نظامي التشغيل Android وLinux، يتم استخدام الاشتراك المحدد، ولكن قد تختار شبكة VPN الأساسية عقدة مختلفة عنه.",
    "Monthly Data Quota": "حصة البيانات الشهرية",
    "Login Required": "تسجيل الدخول مطلوب",
    "Live Speed & Traffic": "السرعة المباشرة وحركة المرور",
    "Private connection service": "خدمة الاتصال الخاصة",
    "Not supported on this platform.": "غير مدعوم على هذا النظام الأساسي.",
    "Logged In": "تم تسجيل الدخول",
    "Per-app bypass is not supported on this platform.":
        "التجاوز لكل تطبيق غير مدعوم على هذا النظام الأساسي.",
    "Quota information unavailable": "معلومات الحصة النسبية غير متوفرة",
    "Query latest session and traffic quota":
        "الاستعلام عن آخر جلسة وحصة حركة المرور",
    "Quick connect": "اتصال سريع",
    "Per-app VPN bypass": "تجاوز VPN لكل تطبيق",
    "Open Mobile Hotspot": "افتح نقطة اتصال الجوال",
    "Re-login to account": "إعادة تسجيل الدخول إلى الحساب",
    "Per-app bypass": "تجاوز لكل تطبيق",
    "Ping All": "بينغ الكل",
    "Re-login": "إعادة تسجيل الدخول",
    "Hotspot Active": "نقطة الاتصال النشطة",
    "Online": "متصل",
    "Ready to perform live routing and security audits.":
        "جاهز لإجراء عمليات التدقيق المباشر والأمان.",
    "Restore": "يعيد",
    "No servers found.": "لم يتم العثور على خوادم.",
    "Recent": "مؤخرًا",
    "Routes from Xray, WARP and MASQUE configurations. Connection is shown after traffic verification.":
        "المسارات من تكوينات Xray وWARP وMASQUE. يظهر الاتصال بعد التحقق من حركة المرور.",
    "Route chosen applications or network subnets outside the VPN.":
        "قم بتوجيه التطبيقات المختارة أو الشبكات الفرعية للشبكة خارج VPN.",
    "Renew session tokens or switch account":
        "قم بتجديد رموز الجلسة أو تبديل الحساب",
    "Save securely": "حفظ بشكل آمن",
    "Save Quota": "حفظ الحصة",
    "Run Full Audit": "تشغيل التدقيق الكامل",
    "Retry": "أعد المحاولة",
    "Select applications to bypass the VPN tunnel and connect directly to the internet.":
        "حدد التطبيقات لتجاوز نفق VPN والاتصال مباشرة بالإنترنت.",
    "Select Surfshark Protocol": "حدد بروتوكول Surfshark",
    "Recommended Fast Routes": "الطرق السريعة الموصى بها",
    "Select VPN Provider": "حدد مزود VPN",
    "Refresh Status": "تحديث الحالة",
    "Remaining traffic:": "حركة المرور المتبقية:",
    "Select": "يختار",
    "Selected apps use the physical network directly. Other apps continue using the VPN.":
        "تستخدم التطبيقات المحددة الشبكة الفعلية مباشرةً. تستمر التطبيقات الأخرى في استخدام VPN.",
    "Repair ICS": "إصلاح ICS",
    "Selected country IP ranges bypass the VPN. Reconnect after changing rules. Domain-only rules need DNS-aware routing.":
        "تتجاوز نطاقات IP الخاصة بالدولة المحددة شبكة VPN. أعد الاتصال بعد تغيير القواعد. تحتاج قواعد المجال فقط إلى توجيه مدرك لنظام DNS.",
    "Service Credentials & Keys": "بيانات اعتماد الخدمة ومفاتيحها",
    "Saved subscriptions": "الاشتراكات المحفوظة",
    "Service Password / Private Key": "كلمة مرور الخدمة / المفتاح الخاص",
    "Select a location or use fastest server": "حدد موقعًا أو استخدم أسرع خادم",
    "Settings": "إعدادات",
    "Session Duration": "مدة الجلسة",
    "Scan subscription QR": "مسح الاشتراك QR",
    "Set Quota": "تعيين الحصة",
    "Show All Servers": "إظهار كافة الخوادم",
    "Session Upload:": "تحميل الجلسة:",
    "Service username and password required for handshakes":
        "اسم المستخدم وكلمة المرور للخدمة مطلوبة للمصافحة",
    "Security session expired; please sign in again to use servers.":
        "انتهت صلاحية جلسة الأمان؛ الرجاء تسجيل الدخول مرة أخرى لاستخدام الخوادم.",
    "Scan QR": "مسح QR",
    "Sign In to Harmoney Pro": "قم بتسجيل الدخول إلى Harmony Pro",
    "Share secure encrypted tunnel with phones & tablets":
        "مشاركة نفق مشفر آمن مع الهواتف والأجهزة اللوحية",
    "Sign in to activate Firefox tunnel and view data quota.":
        "قم بتسجيل الدخول لتنشيط نفق Firefox وعرض حصة البيانات.",
    "Split Tunneling": "تقسيم الأنفاق",
    "Sign In": "تسجيل الدخول",
    "Session Expired": "انتهت صلاحية الجلسة",
    "System Apps": "تطبيقات النظام",
    "Refresh status & quota": "تحديث الحالة والحصة النسبية",
    "Test all": "اختبار الكل",
    "Session Download:": "تنزيل الجلسة:",
    "Start Speed Test": "بدء اختبار السرعة",
    "Service Username / Key ID": "اسم مستخدم الخدمة / معرف المفتاح",
    "Sort by latency": "الترتيب حسب الكمون",
    "Surfshark Service Account": "حساب خدمة Surfshark",
    "The previous VPN operation timed out. You can try again.":
        "انتهت مهلة عملية VPN السابقة. يمكنك المحاولة مرة أخرى.",
    "Smart Service Suitability": "ملاءمة الخدمة الذكية",
    "UNKNOWN": "مجهول",
    "Theme": "سمة",
    "Unknown": "مجهول",
    "Show servers": "إظهار الخوادم",
    "User Apps": "تطبيقات المستخدم",
    "Traffic Analytics": "تحليلات حركة المرور",
    "Sign In / Account": "تسجيل الدخول / الحساب",
    "Update Country Rules": "تحديث قواعد الدولة",
    "To prevent Android from killing the VPN connection in background, disable battery optimization for this app.":
        "لمنع Android من قطع اتصال VPN في الخلفية، قم بتعطيل تحسين البطارية لهذا التطبيق.",
    "Temporary isolated guest Wi-Fi with automatic expiry and subnet isolation.":
        "شبكة Wi-Fi معزولة مؤقتًا للضيوف مع انتهاء الصلاحية التلقائي وعزل الشبكة الفرعية.",
    "Unlimited quota": "حصة غير محدودة",
    "Sign in": "تسجيل الدخول",
    "Uses Windows native per-process routing to send selected apps directly over your physical network adapter. Requires a compatible Windows build and the MilMit VPN service.":
        "يستخدم التوجيه الأصلي لكل عملية في Windows لإرسال التطبيقات المحددة مباشرةً عبر محول الشبكة الفعلي. يتطلب إصدار Windows متوافقًا وخدمة MilMit VPN.",
    "VPN Hotspot Sharing (Windows ICS)": "مشاركة نقطة اتصال VPN (Windows ICS)",
    "Speed report copied to clipboard!": "تم نسخ تقرير السرعة إلى الحافظة!",
    "Speed Test History": "تاريخ اختبار السرعة",
    "Unlimited (Off)": "غير محدود (إيقاف)",
    "Tunnel-managed DNS; reconnect to apply":
        "DNS مُدار عبر النفق؛ إعادة الاتصال لتقديم الطلب",
    "VPN service credentials saved securely.":
        "تم حفظ بيانات اعتماد خدمة VPN بشكل آمن.",
    "VPN-to-hotspot ICS binding verified.":
        "تم التحقق من ربط ICS من VPN إلى نقطة الاتصال.",
    "You will receive visual alerts when reaching this limit.":
        "سوف تتلقى تنبيهات مرئية عند الوصول إلى هذا الحد.",
    "WFP applies the rules independently of IKEv2, WireGuard, OpenVPN, and Xray. UDP relay is not complete yet, so apps requiring UDP will not be fully bypassed.":
        "يطبق برنامج الأغذية العالمي القواعد بشكل مستقل عن IKEv2، وWireGuard، وOpenVPN، وXray. لم يكتمل ترحيل UDP بعد، لذلك لن يتم تجاوز التطبيقات التي تتطلب UDP بالكامل.",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Windows IKEv2 route injection remains IPv4-only. Reconnect after changing rules.":
        "يقوم Xray بتوجيه نطاقات IPv4/IPv6 المحددة وقائمة النطاقات الإيرانية المجمعة مباشرة. يظل حقن مسار Windows IKEv2 هو IPv4 فقط. أعد الاتصال بعد تغيير القواعد.",
    "Windows per-app bypass routes selected apps directly through the physical adapter, independent of the active VPN protocol. Windows build support and the privileged MilMit service are required.":
        "يقوم تجاوز Windows لكل تطبيق بتوجيه التطبيقات المحددة مباشرة من خلال المحول الفعلي، بشكل مستقل عن بروتوكول VPN النشط. مطلوب دعم بناء Windows وخدمة MilMit المميزة.",
    "Verify": "يؤكد",
    "Upload": "رفع",
    "Protocol coverage": "تغطية البروتوكول",
    "Test": "اختبار",
    "No imported profiles found.\nImport a ZIP archive from Surfshark Manual Setup.":
        "لم يتم استيراد أي ملفات تعريف.\nاستورد أرشيف ZIP من إعداد Surfshark اليدوي.",
    "Download Harmoney Pro": "تنزيل Harmoney Pro",
    "More protocols and connection options":
        "\u0645\u0632\u064a\u062f\u0020\u0645\u0646\u0020\u0627\u0644\u0628\u0631\u0648\u062a\u0648\u0643\u0648\u0644\u0627\u062a\u0020\u0648\u062e\u064a\u0627\u0631\u0627\u062a\u0020\u0627\u0644\u0627\u062a\u0635\u0627\u0644",
    "The Harmoney Pro download link is not available yet.":
        "\u0631\u0627\u0628\u0637\u0020\u062a\u0646\u0632\u064a\u0644\u0020\u0048\u0061\u0072\u006d\u006f\u006e\u0065\u0079\u0020\u0050\u0072\u006f\u0020\u063a\u064a\u0631\u0020\u0645\u062a\u0627\u062d\u0020\u0628\u0639\u062f\u002e",
    "Select connection service": "اختيار خدمة الاتصال",
    "Connection service": "خدمة الاتصال",
    "Personal subscriptions": "الاشتراكات الشخصية",
    "Smart routing and personal subscriptions":
        "التوجيه الذكي والاشتراكات الشخصية",
    "Lightweight Firefox VPN tunnel": "نفق Firefox VPN خفيف",
    "Rules apply to the active VPN route. UDP relay is not complete yet; apps requiring UDP may not be fully bypassed.":
        "تُطبَّق القواعد على مسار VPN النشط. لم يكتمل ترحيل UDP بعد؛ وقد لا يتم تجاوز VPN بالكامل للتطبيقات التي تحتاج إلى UDP.",
    "Hotspot sharing preference saved.": "تم حفظ إعدادات مشاركة نقطة الاتصال.",
    "Save preference": "حفظ الإعداد",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Reconnect after changing rules.":
        "يوجّه Xray نطاقات IPv4/IPv6 المحددة وقائمة النطاقات الإيرانية المرفقة مباشرةً. أعد الاتصال بعد تغيير القواعد.",
    "Auditing…": "جارٍ إجراء الفحص…",
    "Checking account…": "جارٍ التحقق من الحساب…",
    "Checking secure credential vault…":
        "جارٍ التحقق من مخزن بيانات الاعتماد الآمن…",
    "Checking…": "جارٍ التحقق…",
    "Disconnect is still being processed…":
        "لا يزال طلب قطع الاتصال قيد المعالجة…",
    "Disconnect requested…": "تم طلب قطع الاتصال…",
    "Disconnecting…": "جارٍ قطع الاتصال…",
    "Importing…": "جارٍ الاستيراد…",
    "Signing in…": "جارٍ تسجيل الدخول…",
    "Starting connection…": "جارٍ بدء الاتصال…",
    "Updating…": "جارٍ التحديث…",
    "Working…": "جارٍ التنفيذ…",
    "Establishing secure tunnel…": "جارٍ إنشاء نفق آمن…",
  },
  "tr": {
    "0 GB (Off)": "0 GB (Kapalı)",
    "100 GB": "100 GB",
    "200 GB": "200 GB",
    "50 GB": "50 GB",
    "A calmer connection. A brighter world.":
        "Daha sakin bir bağlantı. Daha parlak bir dünya.",
    "Add": "Ekle",
    "Add CIDR rule": "CIDR kuralı ekle",
    "Add Policy": "İlke Ekle",
    "Add Routing Policy Rule": "Yönlendirme Politikası Kuralı Ekle",
    "Add split-tunnel CIDR": "Bölünmüş tünel ekle CIDR",
    "Advanced Policy Rules": "Gelişmiş Politika Kuralları",
    "Advanced Routing & Protection": "Gelişmiş Yönlendirme ve Koruma",
    "Allow IPv6": "IPv6'e İzin Ver",
    "Allow Iran traffic during Lockdown":
        "Karantina sırasında İran trafiğine izin ver",
    "Always-on VPN": "Her zaman açık VPN",
    "Always-on and Lockdown cover Firefox, WireGuard, IKEv2 and OpenVPN. DNS and IPv6 policies are enforced by each active tunnel profile.":
        "Her Zaman Açık ve Kilitli kapak Firefox, WireGuard, IKEv2 ve OpenVPN. DNS ve IPv6 politikaları her etkin tünel profili tarafından uygulanır.",
    "Always-on and Lockdown cover supported VPN connections. DNS and IPv6 policies are enforced by the active tunnel.":
        "Her Zaman Açık ve Kilitli kapak, VPN bağlantılarını destekler. DNS ve IPv6 politikaları etkin tünel tarafından uygulanır.",
    "Android Protection": "Android Koruması",
    "Android app bypass applies after reconnecting the VPN.":
        "Android uygulama bypass'ı, VPN yeniden bağlandıktan sonra uygulanır.",
    "Auto (Fallback)": "Otomatik (Geri çekilme)",
    "Block Destination": "Hedefi Engelle",
    "Block IPv6 (Leak Protection)": "IPv6'i Engelle (Sızıntı Koruması)",
    "Block Internet Access": "İnternet Erişimini Engelle",
    "Block QUIC (UDP 443)": "Blok QUIC (UDP 443)",
    "Block all internet leaks when the VPN drops unexpectedly":
        "VPN beklenmedik bir şekilde düştüğünde tüm internet sızıntılarını engelleyin",
    "Block connections without VPN": "VPN",
    "Block internet": "İnterneti engelle",
    "Bypass VPN": "VPN",
    "Cancel": "İptal",
    "Client Isolation": "İstemci Yalıtımı",
    "Close": "Kapat",
    "Connection": "Bağlantı",
    "Console output copied to clipboard.": "Konsol çıkışı panoya kopyalandı.",
    "Country destinations bypass the VPN directly through the ISP; other traffic remains inside the VPN.":
        "Ülke hedefleri VPN'i doğrudan ISP aracılığıyla atlar; diğer trafik VPN'in içinde kalır.",
    "Create": "Oluştur",
    "Create new list": "Oluştur Yeni liste oluştur",
    "Custom Bypass Rules": "Özel Baypas Kuralları",
    "Custom Location Lists": "Özel Konum Listeleri",
    "Default Hotspot Route": "Varsayılan Erişim Noktası Rotası",
    "Deselect all": "Tüm seçimleri kaldır",
    "Diagnostic Terminal Output": "Tanılama Terminal Çıkışı",
    "Diagnostics & Health": "Teşhis ve Sağlık",
    "Direct (Bypass VPN)": "Doğrudan (VPN'i Atla)",
    "Domains, IPv4 addresses or CIDRs that always bypass the VPN": "VPN",
    "Done": "Bitti",
    "Emergency Stop": "Acil Durdurma",
    "Emergency Stop executed: Processes terminated and physical network unjammed.":
        "Acil Durdurma yürütüldü: İşlemler sonlandırıldı ve fiziksel ağdaki sıkışma çözüldü.",
    "Endpoint Candidates": "Uç Nokta Adayları",
    "Enforce Quota": "Kotayı Zorunlu Kıl",
    "Error": "Hata",
    "Explain": "Açıkla",
    "Explain why a destination routes via VPN or Direct ISP, with rule priority matching.":
        "Bir hedefin neden kural önceliği eşleşmesi ile VPN veya Doğrudan ISP aracılığıyla yönlendirildiğini açıklayın.",
    "Export the selected server list as JSON and TXT files.":
        "Seçilen sunucu listesini JSON ve TXT dosyaları olarak dışa aktarın.",
    "FASTEST ⚡": "EN HIZLI ⚡",
    "Firefox Account": "Firefox Hesabı",
    "Firefox VPN": "Firefox VPN",
    "Firefox data allowance": "Firefox veri tahsisi",
    "Force HTTPS traffic through TCP/TLS for consistent filtering.":
        "Tutarlı filtreleme için HTTPS trafiğini TCP/TLS üzerinden zorlayın.",
    "Force Hotspot VPN DNS": "Erişim Noktasını Zorla VPN DNS",
    "Force VPN": "Zorunlu VPN",
    "Force VPN Encrypted": "VPN Şifrelenmiş",
    "Guest Hotspot": "Misafir Erişim Noktası",
    "HTTP/2 CONNECT": "HTTP/2 BAĞLANTI",
    "Harmoney": "Harmoney",
    "Harmoney Pro": "Harmoney Pro",
    "Harmoney Smart": "Harmoney Smart",
    "Host and Hotspot clients": "Ana Bilgisayar ve Erişim Noktası istemcileri",
    "Host machine only": "Yalnızca ana makine",
    "Hotspot & Devices": "Erişim Noktası ve Cihazlar",
    "Hotspot Doctor & Diagnostics": "Etkin Nokta Doktoru ve Teşhis",
    "Hotspot IPv6 Policy": "Etkin Nokta IPv6 Politikası",
    "Hotspot clients only": "Yalnızca etkin nokta istemcileri",
    "IKEv2": "IKEv2",
    "IPv6 leak protection": "IPv6 sızıntı koruması",
    "Import ZIP Archive": "ZIP Arşivini İçe Aktarın",
    "Inspect XFRM interface, table 220, IP rules, and verify live connectivity safely.":
        "XFRM arayüzünü, tablo 220'yi, IP kurallarını inceleyin ve canlı bağlantıyı güvenli bir şekilde doğrulayın.",
    "Keep domestic services and banking reachable when the VPN drops":
        "VPN düştüğünde yurt içi hizmetleri ve bankacılığı erişilebilir tutun",
    "Launch direct": "Doğrudan başlat",
    "Live Connection Logs (Stream)": "Canlı Bağlantı Günlükleri (Akış)",
    "Live Logs": "Canlı Günlükler",
    "Live Verification": "Canlı Doğrulama",
    "Live connection events from all providers and protocols":
        "Tüm sağlayıcılardan ve protokollerden canlı bağlantı olayları",
    "Lockdown mode (Kill Switch)": "Kilitleme modu (Kill Switch)",
    "Logs copied to clipboard (secrets redacted).":
        "Günlükler panoya kopyalandı (gizli bilgiler düzeltildi).",
    "Manage VPN Profiles": "VPN Profillerini Yönet",
    "Manage connected devices, bandwidth quotas, guest Wi-Fi, and routing policies.":
        "Bağlı cihazları, bant genişliği kotalarını, konuk Wi-Fi'i ve yönlendirme politikalarını yönetin.",
    "Mbps": "Mbps",
    "Network Subnets (CIDRs)": "Ağ Alt Ağları (CIDRs)",
    "Network unjammed: Kill switch, routes, and XFRM interfaces restored to normal.":
        "Ağ sıkışması çözüldü: Anahtarı, rotaları ve XFRM arayüzlerini normale döndürdü.",
    "New Custom List": "Yeni Özel Liste",
    "No CIDR rules yet.": "Henüz CIDR kuralı yok.",
    "No advanced policy rules configured.":
        "Yapılandırılan gelişmiş ilke kuralı yok.",
    "No custom bypass rules.": "Özel atlama kuralı yok.",
    "No custom lists created yet.": "Henüz özel liste oluşturulmadı.",
    "No devices currently connected to hotspot.":
        "Şu anda erişim noktasına bağlı cihaz yok.",
    "No endpoint candidates configured.": "Yapılandırılmış uç nokta adayı yok.",
    "No matching events yet. Start a VPN connection to collect logs.":
        "Henüz eşleşen etkinlik yok. Günlükleri toplamak için bir VPN bağlantısı başlatın.",
    "Notify only": "Yalnızca bilgilendir",
    "Offline cache ready": "Çevrimdışı önbelleğe hazır",
    "OpenVPN": "OpenVPN",
    "Operation failed": "İşlem başarısız oldu",
    "Overall Tunnel Health": "Genel Tünel Sağlığını Yenile",
    "Pause Device Connection": "Cihaz Bağlantısını Duraklat",
    "Ping": "Ping",
    "Prevent connected hotspot clients from communicating directly.":
        "Bağlı sıcak nokta istemcilerinin doğrudan iletişim kurmasını önleyin.",
    "Protected Hotspot Options": "Korumalı Erişim Noktası Seçenekleri",
    "Protection HUD": "Koruma HUD",
    "Protection settings are applied by Android VpnService and take effect after reconnecting.":
        "Koruma ayarları Android VpnService tarafından uygulanır ve yeniden bağlandıktan sonra etkili olur.",
    "Protocol": "Protokol",
    "Protocol coverage": "Protokol kapsamı olmadan bağlantıları engelleyin",
    "Provider": "Sağlayıcı",
    "Queued…": "Sıraya alındı…",
    "Quota Exceeded Action:": "Kota Aşıldı Eylem:",
    "Reconnect the VPN to apply Android CIDR routes.":
        "'yi atlayın Android CIDR rotalarını uygulamak için VPN'i yeniden bağlayın.",
    "Redirect all device DNS queries to Surfshark DNS.":
        "Tüm cihaz DNS sorgularını Surfshark DNS'e yönlendirin.",
    "Redirect device DNS queries through the selected VPN.":
        "Seçilen VPN aracılığıyla cihaz DNS sorgularını yönlendirin.",
    "Refresh": "Yenile",
    "Repair Hotspot Routing": "Hotspot Yönlendirmesini Onarın",
    "Route Explain": "Rota Açıklama",
    "Route IPv6 through supported tunnels; reconnect to apply":
        "IPv6'i desteklenen tünellerden geçirin; uygulamak için yeniden bağlanın",
    "Route Table & XFRM Verification": "Rota Tablosu ve XFRM Doğrulaması",
    "Route specific destinations through Direct, Force VPN, or Block.":
        "Belirli hedefleri Doğrudan, Zorla VPN veya Blok yoluyla yönlendirin.",
    "Route test": "Rota testi",
    "Routing Policy:": "Yönlendirme Politikası:",
    "Run Hotspot Doctor": "Hotspot Doctor'ı çalıştırın",
    "Safe Apply & LKG": "Güvenli Uygulama ve LKG",
    "Save": "Kaydet",
    "Secure VPN DNS": "Güvenli VPN DNS",
    "Select all": "Tümünü seç",
    "Start Guest": "Başlat Misafir",
    "Start Guest Hotspot": "Konuk Erişim Noktasını Başlat",
    "Start Guest Wi-Fi": "Başlat Konuk Wi-Fi",
    "Stop Guest": "Misafiri Durdur",
    "Support bundle exported and copied to clipboard.":
        "Destek paketi dışa aktarıldı ve panoya kopyalandı.",
    "Surfshark": "Surfshark",
    "Talker Logs": "Konuşmacı Günlükleri",
    "Test": "Testi",
    "Throttle to 128kbit/s": "128 kbit/s'ye kısın",
    "Tunnel path audits, leak tests, latency probes, and runtime telemetry":
        "Tünel yolu denetimleri, sızıntı testleri, gecikme araştırmaları ve çalışma zamanı telemetrisi",
    "VPN Debug Logs": "VPN Hata Ayıklama Günlükleri",
    "WireGuard": "WireGuard",
    "by MilMit": ", MilMit tarafından",
    "اسکن خودکار این دستگاه": "Bu cihazın otomatik taranması",
    "اعمال در تنظیمات": "Ayarlara uygula",
    "انصراف": "İptal",
    "این شناسه به عنوان اثرانگشت سخت‌افزاری (Hardware Device ID) برای احراز هویت دستگاه در سرور استفاده می‌شود. می‌توانید مقادیر را تغییر دهید یا خودکار دریافت کنید:":
        "Bu kimlik, sunucudaki aygıtın kimliğini doğrulamak için donanım parmak izi (Hardware Device ID) olarak kullanılır. Değerleri değiştirebilir veya otomatik alabilirsiniz:",
    "باز کردن پوشه": "Klasörü aç",
    "برای بارگذاری سرورها، اشتراک خود را وارد کنید":
        "Sunucuları yüklemek için giriş yapın",
    "بستن": "Kapat",
    "تست اتصال": "Bağlantı Testi",
    "تنظیمات اتصال سرویس": "Hizmet bağlantı ayarları",
    "تنظیمات سرور": "Sunucu ayarları",
    "تولید شناسه سخت‌افزاری دستگاه": "Cihaz Donanım Kimliğini Oluştur",
    "جهت اتصال آسان‌تر از خط فرمان (رمز عبور متن آشکار ذخیره می‌شود)":
        "metin dosyasına kaydedin (parola açık metin olarak saklanır)",
    "خروجی‌گرفتن از پروفایل‌های اتصال":
        "Bağlantı profillerinin çıktısı alınması",
    "دریافت خودکار از سخت‌افزار سیستم":
        "Sistem donanımından otomatik olarak alın",
    "ذخیره تنظیمات": "Ayarları Kaydet",
    "ذخیره نام کاربری و رمز عبور در فایل متنی":
        "Komut satırından daha kolay bağlantı için kullanıcı adını ve parolayı",
    "رمز عبور (Password)": "Şifre",
    "شروع استخراج": "Çıkartmayı başlat",
    "شناسه سخت‌افزاری به مقدار پیش‌فرض سرور بازنشانی شد.":
        "Donanım tanımlayıcısı sunucunun varsayılan değerine sıfırlandı.",
    "شناسه سخت‌افزاری دستگاه با موفقیت تنظیم شد.":
        "Cihazın donanım kimliği başarıyla ayarlandı.",
    "شناسه نهایی تولیدشده (SHA-256):": "Oluşturulan son kimlik (SHA-256):",
    "شناسه پیش‌فرض سرور": "Varsayılan sunucu kimliği",
    "فایل‌ها با موفقیت استخراج شدند.": "Dosyalar başarıyla çıkarıldı.",
    "محل ذخیره پیش‌فرض:": "Varsayılan depolama konumu:",
    "نام کاربری (Username)": "Kullanıcı adı",
    "ورود با موفقیت انجام شد و فهرست سرورها به‌روزرسانی گردید.":
        "Giriş başarılı oldu ve sunucu listesi güncellendi.",
    "ورود به حساب Harmoney Pro": "Giriş yapın Harmoney Pro",
    "ورود مقادیر و ساخت دستی": "Değerleri girin ve manuel olarak oluşturun",
    "ورود و بارگذاری سرورها": "Oturum açma ve sunucuları yükleme",
    "پیش‌فرض سرور": "Varsayılan sunucu",
    "پیکربندی سرور (پیش‌فرض سورس کد - فقط در حالت Debug)":
        "Sunucu yapılandırması (varsayılan kaynak kodu - yalnızca Hata Ayıklama modunda)",
    "ACTIVE": "AKTİF",
    "Active": "Aktif",
    "Add subscription": "Abonelik ekle",
    "Add an application before enabling app bypass.":
        "Uygulama atlama özelliğini etkinleştirmeden önce bir uygulama ekleyin.",
    "A VPN operation is already running. Please wait for its status to update.":
        "Bir VPN işlemi zaten çalışıyor. Lütfen durumunun güncellenmesini bekleyin.",
    "Add an HTTP or HTTPS subscription URL. Links are stored securely on this device.":
        "Bir HTTP veya HTTPS abonelik URL'si ekleyin. Bağlantılar bu cihazda güvenli bir şekilde saklanır.",
    "-- ms": "-- ms",
    "Add at least one application to turn this on.":
        "Bunu açmak için en az bir uygulama ekleyin.",
    "API Settings": "API Ayarları",
    "Add application (.exe)": "Uygulama ekle (.exe)",
    "Android Lockdown is active": "Android Kilitleme etkin",
    "App language": "Uygulama dili",
    "All": "Tüm",
    "Bypass": "Baypas",
    "Android supports IPv4 and IPv6 CIDR bypass. Reconnect the VPN after changing these routes; app bypass also takes effect after reconnect.":
        "Android, IPv4 ve IPv6 CIDR bypass'ı destekler. Bu rotaları değiştirdikten sonra VPN'yi yeniden bağlayın; uygulama atlama işlemi yeniden bağlandıktan sonra da etkili olur.",
    "Applications": "Uygulamalar",
    "CONNECTING": "BAĞLANIYOR",
    "Configure": "Yapılandır",
    "Change": "Değiştirmek",
    "Clear": "Temizlemek",
    "Connected": "Bağlı",
    "Bypassing": "Bypass etme",
    "Connecting": "Bağlanıyor",
    "Clear stored credentials from this device":
        "Saklanan kimlik bilgilerini bu cihazdan temizle",
    "Cancel Test": "Testi İptal Et",
    "Copy Report": "Raporu Kopyala",
    "CONNECT": "BAĞLAMAK",
    "Cisco": "Cisco",
    "CONNECTED": "BAĞLI",
    "Country & App Bypass": "Ülke ve Uygulama Atlama",
    "Choose QR image": "QR resmini seçin",
    "Credentials encrypted in privileged platform keystore":
        "Ayrıcalıklı platform anahtar deposunda şifrelenen kimlik bilgileri",
    "Country IPv4 ranges bypass the VPN after reconnecting. App bypass uses the Windows physical interface and requires the MilMit service.":
        "Ülke IPv4 aralıkları, yeniden bağlandıktan sonra VPN'yi atlar. Uygulama atlama, Windows fiziksel arayüzünü kullanır ve MilMit hizmetini gerektirir.",
    "Disabled": "Engelli",
    "Disconnect": "Bağlantıyı kes",
    "Disabled: all traffic routes securely through encrypted VPN tunnel.":
        "Devre Dışı: Tüm trafik şifreli VPN tüneli üzerinden güvenli bir şekilde yönlendirilir.",
    "Choose your desired VPN network provider":
        "İstediğiniz VPN ağ sağlayıcısını seçin",
    "Battery Optimization Active (Doze Mode)":
        "Pil Optimizasyonu Aktif (Doze Modu)",
    "Check status": "Durumu kontrol et",
    "Enable Lockdown in Android VPN settings":
        "Android VPN ayarlarında Kilitlemeyi etkinleştirin",
    "Disable Optimization": "Optimizasyonu Devre Dışı Bırak",
    "Disconnect is taking longer than expected. You can try again.":
        "Bağlantının kesilmesi beklenenden uzun sürüyor. Tekrar deneyebilirsiniz.",
    "Configures Windows ICS for the VPN adapter when Mobile Hotspot is active. The app verifies the ICS binding; client Internet traffic still needs an end-to-end check.":
        "Mobil Erişim Noktası etkinken VPN bağdaştırıcısı için Windows ICS'yi yapılandırır. Uygulama, ICS bağlanmasını doğrular; istemci İnternet trafiğinin hala uçtan uca kontrol edilmesi gerekiyor.",
    "Download": "İndirmek",
    "Country bypass DAT rules updated. Reconnect VPN to apply.":
        "Ülke atlama DAT kuralları güncellendi. Uygulamak için VPN'i yeniden bağlayın.",
    "Favorites": "Favoriler",
    "DISCONNECTED": "BAĞLANTI KESİLDİ",
    "Enable Split Tunneling": "Bölünmüş Tünel Oluşturmayı Etkinleştir",
    "Enable per-app bypass": "Uygulama başına bypass'ı etkinleştir",
    "Enable Hotspot Sharing (ICS)":
        "Erişim Noktası Paylaşımını (ICS) Etkinleştir",
    "Encrypted tunnel verified with zero packet leakage.":
        "Şifreli tünel sıfır paket sızıntısıyla doğrulandı.",
    "DISCONNECTING": "BAĞLANTI KESİLİYOR",
    "Firefox Account Email / User": "Firefox Hesabı E-postası / Kullanıcı",
    "Firefox Account credentials are sent directly to Mozilla by the local Windows helper. The password is not saved; only the account tokens needed for future connections are stored locally.":
        "Firefox Hesabı kimlik bilgileri yerel Windows yardımcısı tarafından doğrudan Mozilla'ya gönderilir. Parola kaydedilmez; yalnızca gelecekteki bağlantılar için gereken hesap belirteçleri yerel olarak depolanır.",
    "Enabled for Harmoney": "Harmoney için etkinleştirildi",
    "FireTunnel authenticates with Firefox Accounts. Credentials are sent only to the root-isolated native helper; tokens never enter Flutter storage.":
        "FireTunnel, Firefox Hesaplarıyla kimlik doğrulaması yapar. Kimlik bilgileri yalnızca kökten yalıtılmış yerel yardımcıya gönderilir; tokenlar hiçbir zaman Flutter depolama alanına girmez.",
    "Active Surfshark Protocol": "Aktif Surfshark Protokolü",
    "FireTunnel Token / Password": "FireTunnel Belirteci / Şifre",
    "Harmoney Anti-Censorship Core": "Harmoney Sansür Karşıtı Çekirdek",
    "Harmoney Pro Connection Error": "Harmoney Pro Bağlantı Hatası",
    "Enable app bypass": "Uygulama atlama özelliğini etkinleştir",
    "Harmoney Pro Service": "Harmoney Pro Hizmeti",
    "Export Servers": "Sunucuları Dışa Aktarma",
    "History": "Tarih",
    "Inactive": "Etkin değil",
    "Firefox VPN protocol": "Firefox VPN protokolü",
    "Hotspot Active": "Erişim Noktası Etkin",
    "Hotspot Inactive": "Erişim Noktası Etkin Değil",
    "KEY REQUIRED": "ANAHTAR GEREKLİ",
    "Firefox VPN Token & Auth": "Firefox VPN Belirteci ve Kimlik Doğrulaması",
    "Live bandwidth, data accounting & quota":
        "Canlı bant genişliği, veri muhasebesi ve kota",
    "Login Required": "Giriş Gerekli",
    "Live Real-Time Speed": "Canlı Gerçek Zamanlı Hız",
    "Import ZIP": "ZIP'i içe aktar",
    "Firefox Account credentials are sent directly to Mozilla by the native Android engine. Encrypted tokens never enter Flutter storage.":
        "Firefox Hesabı kimlik bilgileri, yerel Android motoru tarafından doğrudan Mozilla'ya gönderilir. Şifrelenmiş tokenler hiçbir zaman Flutter depolama alanına girmez.",
    "Copied!": "Kopyalandı!",
    "Manage Account": "Hesabı Yönet",
    "Manage": "Üstesinden gelmek",
    "Logged In": "Giriş Yapıldı",
    "Hardware-backed encryption: Credentials are encrypted in platform vault.":
        "Donanım destekli şifreleme: Kimlik bilgileri platform kasasında şifrelenir.",
    "Load apps": "Uygulamaları yükle",
    "Load installed applications to configure per-app bypass.":
        "Uygulama bazında bypass'ı yapılandırmak için yüklü uygulamaları yükleyin.",
    "Live Active": "Canlı Aktif",
    "Harmoney Pro Sign In Required": "Harmoney Pro'da Oturum Açmanız Gerekiyor",
    "Firefox VPN Account": "Firefox VPN Hesabı",
    "Last Speed Benchmark:": "Son Hız Karşılaştırması:",
    "Monthly Allowance": "Aylık Ödenek",
    "Manage connection, security, and appearance":
        "Bağlantıyı, güvenliği ve görünümü yönetin",
    "Locations & Routes": "Konumlar ve Rotalar",
    "Live Speed & Traffic": "Canlı Hız ve Trafik",
    "No servers found.": "Hiçbir sunucu bulunamadı.",
    "Online": "Çevrimiçi",
    "Hardware Profile: Dell Latitude 7210 & Intel / Cellular LTE":
        "Donanım Profili: Dell Latitude 7210 ve Intel / Hücresel LTE",
    "No imported profiles found.\\nImport a ZIP archive from Surfshark Manual Setup.":
        "İçe aktarılan profil bulunamadı.\\nSurfshark Manuel Kurulum'dan bir ZIP arşivini içe aktarın.",
    "Monthly Data Quota": "Aylık Veri Kotası",
    "Log in to account": "Hesaba giriş yapın",
    "Open": "Açık",
    "No subscriptions added yet.": "Henüz abonelik eklenmedi.",
    "No active hotspot interface detected on system.":
        "Sistemde aktif erişim noktası arayüzü algılanmadı.",
    "On Android and Linux the selected subscription is used, but the VPN core may choose a different node from it.":
        "Android ve Linux'ta seçilen abonelik kullanılır, ancak VPN çekirdeği bundan farklı bir düğüm seçebilir.",
    "Manage Firefox VPN Account": "Firefox VPN Hesabını Yönetin",
    "No speed tests recorded yet.": "Henüz hız testi kaydedilmedi.",
    "Per-app bypass": "Uygulama başına atlama",
    "Per-app VPN bypass": "Uygulama başına VPN bypass'ı",
    "Open Mobile Hotspot": "Mobil Bağlantı Noktasını Aç",
    "Re-login": "Yeniden giriş yap",
    "Recent": "Son",
    "No applications selected.": "Hiçbir uygulama seçilmedi.",
    "Query latest session and traffic quota":
        "En son oturumu ve trafik kotasını sorgula",
    "Not supported on this platform.": "Bu platformda desteklenmiyor.",
    "Quota information unavailable": "Kota bilgisi mevcut değil",
    "No favorite servers.": "Favori sunucu yok.",
    "No Limit Set": "Limit Ayarı Yok",
    "Recommended Fast Routes": "Önerilen Hızlı Rotalar",
    "Refresh status & quota": "Durumu ve kotayı yenile",
    "Remaining traffic:": "Kalan trafik:",
    "Ready to perform live routing and security audits.":
        "Canlı yönlendirme ve güvenlik denetimleri gerçekleştirmeye hazır.",
    "Logout": "Oturumu kapat",
    "Per-app bypass is not supported on this platform.":
        "Uygulama başına bypass bu platformda desteklenmiyor.",
    "Restore": "Eski haline getirmek",
    "Route chosen applications or network subnets outside the VPN.":
        "Seçilen uygulamaları veya ağ alt ağlarını VPN dışına yönlendirin.",
    "Scan QR": "QR'yi tara",
    "Renew session tokens or switch account":
        "Oturum belirteçlerini yenileyin veya hesabı değiştirin",
    "Repair ICS": "ICS'yi onarın",
    "Routes from Xray, WARP and MASQUE configurations. Connection is shown after traffic verification.":
        "Xray, WARP ve MASQUE konfigürasyonlarından rotalar. Bağlantı, trafik doğrulamasından sonra gösterilir.",
    "Quick connect": "Hızlı bağlantı",
    "Select": "Seçme",
    "Save securely": "Güvenli bir şekilde kaydedin",
    "Refresh Status": "Durumu Yenile",
    "Retry": "Yeniden dene",
    "Private connection service": "Özel bağlantı hizmeti",
    "Security session expired; please sign in again to use servers.":
        "Güvenlik oturumunun süresi doldu; sunucuları kullanmak için lütfen tekrar oturum açın.",
    "Select VPN Provider": "VPN Sağlayıcısını Seçin",
    "Service Credentials & Keys": "Hizmet Kimlik Bilgileri ve Anahtarları",
    "Selected apps use the physical network directly. Other apps continue using the VPN.":
        "Seçilen uygulamalar doğrudan fiziksel ağı kullanır. Diğer uygulamalar VPN'i kullanmaya devam eder.",
    "Select a location or use fastest server":
        "Bir konum seçin veya en hızlı sunucuyu kullanın",
    "Select Surfshark Protocol": "Surfshark Protokolünü Seçin",
    "Select applications to bypass the VPN tunnel and connect directly to the internet.":
        "VPN tünelini atlayıp doğrudan internete bağlanacak uygulamaları seçin.",
    "Re-login to account": "Hesaba yeniden giriş yapın",
    "Service Username / Key ID": "Hizmet Kullanıcı Adı / Anahtar Kimliği",
    "Service Password / Private Key": "Hizmet Şifresi / Özel Anahtar",
    "Set Quota": "Kota Ayarla",
    "Session Expired": "Oturumun Süresi Doldu",
    "Session Duration": "Oturum Süresi",
    "Settings": "Ayarlar",
    "Selected country IP ranges bypass the VPN. Reconnect after changing rules. Domain-only rules need DNS-aware routing.":
        "Seçilen ülke IP aralıkları VPN'yi atlar. Kuralları değiştirdikten sonra yeniden bağlanın. Yalnızca etki alanı kuralları, DNS uyumlu yönlendirmeye ihtiyaç duyar.",
    "Save Quota": "Kotayı Kaydet",
    "Share secure encrypted tunnel with phones & tablets":
        "Güvenli şifreli tüneli telefonlarla ve tabletlerle paylaşın",
    "Sign in": "Oturum aç",
    "Saved subscriptions": "Kayıtlı abonelikler",
    "Service username and password required for handshakes":
        "El sıkışmalar için gerekli hizmet kullanıcı adı ve şifresi",
    "Ping All": "Tümüne ping at",
    "Sign In": "Oturum aç",
    "Sign In to Harmoney Pro": "Harmoney Pro'da Oturum Açın",
    "Session Upload:": "Oturum Yükleme:",
    "Sign In / Account": "Oturum aç / Hesap",
    "Sign in to activate Firefox tunnel and view data quota.":
        "Firefox tünelini etkinleştirmek ve veri kotasını görüntülemek için oturum açın.",
    "Speed Test History": "Hız Testi Geçmişi",
    "Sort by latency": "Gecikmeye göre sırala",
    "Session Download:": "Oturum İndirme:",
    "Smart Service Suitability": "Akıllı Hizmet Uygunluğu",
    "Test all": "Tümünü test et",
    "System Apps": "Sistem Uygulamaları",
    "Split Tunneling": "Bölünmüş Tünel Açma",
    "Surfshark Service Account": "Surfshark Hizmet Hesabı",
    "Theme": "Tema",
    "Start Speed Test": "Hız Testini Başlat",
    "Speed report copied to clipboard!": "Hız raporu panoya kopyalandı!",
    "The previous VPN operation timed out. You can try again.":
        "Önceki VPN işlemi zaman aşımına uğradı. Tekrar deneyebilirsiniz.",
    "Scan subscription QR": "Abonelik QR'sini tara",
    "Tunnel-managed DNS; reconnect to apply":
        "Tünel tarafından yönetilen DNS; uygulamak için yeniden bağlanın",
    "Show servers": "Sunucuları göster",
    "Update Country Rules": "Ülke Kurallarını Güncelleyin",
    "User Apps": "Kullanıcı Uygulamaları",
    "UNKNOWN": "BİLİNMİYOR",
    "Unlimited quota": "Sınırsız kota",
    "Show All Servers": "Tüm Sunucuları Göster",
    "VPN Hotspot Sharing (Windows ICS)":
        "VPN Erişim Noktası Paylaşımı (Windows ICS)",
    "Unknown": "Bilinmiyor",
    "Run Full Audit": "Tam Denetimi Çalıştır",
    "Verify": "Doğrulamak",
    "VPN service credentials saved securely.":
        "VPN hizmeti kimlik bilgileri güvenli bir şekilde kaydedildi.",
    "Unlimited (Off)": "Sınırsız (Kapalı)",
    "Uses Windows native per-process routing to send selected apps directly over your physical network adapter. Requires a compatible Windows build and the MilMit VPN service.":
        "Seçilen uygulamaları doğrudan fiziksel ağ bağdaştırıcınız üzerinden göndermek için Windows yerel işlem başına yönlendirmeyi kullanır. Uyumlu bir Windows yapısı ve MilMit VPN hizmeti gerektirir.",
    "VPN-to-hotspot ICS binding verified.":
        "VPN'den sıcak noktaya ICS bağlanması doğrulandı.",
    "Temporary isolated guest Wi-Fi with automatic expiry and subnet isolation.":
        "Otomatik süre sonu ve alt ağ izolasyonu ile geçici olarak izole edilmiş konuk Wi-Fi'si.",
    "Windows per-app bypass routes selected apps directly through the physical adapter, independent of the active VPN protocol. Windows build support and the privileged MilMit service are required.":
        "Windows uygulama başına atlama, seçilen uygulamaları etkin VPN protokolünden bağımsız olarak doğrudan fiziksel bağdaştırıcı aracılığıyla yönlendirir. Windows derleme desteği ve ayrıcalıklı MilMit hizmeti gereklidir.",
    "Traffic Analytics": "Trafik Analizi",
    "To prevent Android from killing the VPN connection in background, disable battery optimization for this app.":
        "Android'in arka planda VPN bağlantısını kesmesini önlemek için bu uygulamanın pil optimizasyonunu devre dışı bırakın.",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Windows IKEv2 route injection remains IPv4-only. Reconnect after changing rules.":
        "Xray, seçilen IPv4/IPv6 aralıklarını ve paketlenmiş İran alan adı listesini doğrudan yönlendirir. Windows IKEv2 rota enjeksiyonu yalnızca IPv4 olarak kalır. Kuralları değiştirdikten sonra yeniden bağlanın.",
    "You will receive visual alerts when reaching this limit.":
        "Bu sınıra ulaştığınızda görsel uyarılar alacaksınız.",
    "Upload": "Yüklemek",
    "WFP applies the rules independently of IKEv2, WireGuard, OpenVPN, and Xray. UDP relay is not complete yet, so apps requiring UDP will not be fully bypassed.":
        "WFP, kuralları IKEv2, WireGuard, OpenVPN ve Xray'den bağımsız olarak uygular. UDP geçişi henüz tamamlanmadığından UDP gerektiren uygulamalar tamamen atlanmayacak.",
    "No imported profiles found.\nImport a ZIP archive from Surfshark Manual Setup.":
        "İçe aktarılmış profil bulunamadı.\nSurfshark Manuel Kurulum'dan bir ZIP arşivi içe aktarın.",
    "Download Harmoney Pro": "Harmoney Pro'yu indir",
    "More protocols and connection options":
        "\u0044\u0061\u0068\u0061\u0020\u0066\u0061\u007a\u006c\u0061\u0020\u0070\u0072\u006f\u0074\u006f\u006b\u006f\u006c\u0020\u0076\u0065\u0020\u0062\u0061\u011f\u006c\u0061\u006e\u0074\u0131\u0020\u0073\u0065\u00e7\u0065\u006e\u0065\u011f\u0069",
    "The Harmoney Pro download link is not available yet.":
        "\u0048\u0061\u0072\u006d\u006f\u006e\u0065\u0079\u0020\u0050\u0072\u006f\u0020\u0069\u006e\u0064\u0069\u0072\u006d\u0065\u0020\u0062\u0061\u011f\u006c\u0061\u006e\u0074\u0131\u0073\u0131\u0020\u0068\u0065\u006e\u00fc\u007a\u0020\u006b\u0075\u006c\u006c\u0061\u006e\u0131\u006c\u0061\u006d\u0131\u0079\u006f\u0072\u002e",
    "Select connection service": "Bağlantı hizmetini seçin",
    "Connection service": "Bağlantı hizmeti",
    "Personal subscriptions": "Kişisel abonelikler",
    "Smart routing and personal subscriptions":
        "Akıllı yönlendirme ve kişisel abonelikler",
    "Lightweight Firefox VPN tunnel": "Hafif Firefox VPN tüneli",
    "Rules apply to the active VPN route. UDP relay is not complete yet; apps requiring UDP may not be fully bypassed.":
        "Kurallar etkin VPN rotasına uygulanır. UDP aktarımı henüz tamamlanmadı; UDP gerektiren uygulamalar VPN dışında tam olarak çalışmayabilir.",
    "Hotspot sharing preference saved.":
        "Erişim noktası paylaşım tercihi kaydedildi.",
    "Save preference": "Tercihi kaydet",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Reconnect after changing rules.":
        "Xray, seçilen IPv4/IPv6 aralıklarını ve paketteki İran alan adı listesini doğrudan yönlendirir. Kuralları değiştirdikten sonra yeniden bağlanın.",
    "Remove": "Kaldır",
    "Auditing…": "Denetleniyor…",
    "Checking account…": "Hesap kontrol ediliyor…",
    "Checking secure credential vault…":
        "Güvenli kimlik bilgisi kasası denetleniyor…",
    "Checking…": "Kontrol ediliyor…",
    "Disconnect is still being processed…":
        "Bağlantı kesme isteği hâlâ işleniyor…",
    "Disconnect requested…": "Bağlantı kesme isteği gönderildi…",
    "Disconnecting…": "Bağlantı kesiliyor…",
    "Importing…": "İçe aktarılıyor…",
    "Signing in…": "Oturum açılıyor…",
    "Starting connection…": "Bağlantı başlatılıyor…",
    "Updating…": "Güncelleniyor…",
    "Working…": "İşleniyor…",
    "Establishing secure tunnel…": "Güvenli tünel kuruluyor…",
  },
  "es": {
    "0 GB (Off)": "0 GB (Desactivado)",
    "100 GB": "100 GB",
    "200 GB": "200 GB",
    "50 GB": "50 GB",
    "A calmer connection. A brighter world.":
        "Una conexión más tranquila. Un mundo más brillante.",
    "Add": "Agregar",
    "Add CIDR rule": "Agregar regla CIDR",
    "Add Policy": "Agregar política",
    "Add Routing Policy Rule": "Agregar regla de política de enrutamiento",
    "Add split-tunnel CIDR": "Agregar CIDR de túnel dividido",
    "Advanced Policy Rules": "Reglas de política avanzada",
    "Advanced Routing & Protection": "Enrutamiento y protección avanzados",
    "Allow IPv6": "Permitir IPv6",
    "Allow Iran traffic during Lockdown":
        "Permitir el tráfico de Irán durante el bloqueo",
    "Always-on VPN": "Siempre activo VPN",
    "Always-on and Lockdown cover Firefox, WireGuard, IKEv2 and OpenVPN. DNS and IPv6 policies are enforced by each active tunnel profile.":
        "Cubierta siempre encendida y con bloqueo Firefox, WireGuard, IKEv2 y OpenVPN. Las políticas DNS y IPv6 se aplican mediante cada perfil de túnel activo.",
    "Always-on and Lockdown cover supported VPN connections. DNS and IPv6 policies are enforced by the active tunnel.":
        "La cubierta siempre encendida y de bloqueo admitió conexiones VPN. Las políticas DNS y IPv6 las aplica el túnel activo.",
    "Android Protection": "Protección Android",
    "Android app bypass applies after reconnecting the VPN.":
        "La omisión de la aplicación Android se aplica después de volver a conectar el VPN.",
    "Auto (Fallback)": "Auto (reserva)",
    "Block Destination": "Destino del bloque",
    "Block IPv6 (Leak Protection)": "Bloquear IPv6 (Protección contra fugas)",
    "Block Internet Access": "Bloquear acceso a Internet",
    "Block QUIC (UDP 443)": "Bloque QUIC (UDP 443)",
    "Block all internet leaks when the VPN drops unexpectedly":
        "Bloquea todas las fugas de Internet cuando VPN se cae inesperadamente",
    "Block connections without VPN": "Bloquear conexiones sin VPN",
    "Block internet": "Bloquear Internet",
    "Bypass VPN": "Omita VPN",
    "Cancel": "Cancelar",
    "Client Isolation": "Aislamiento de clientes",
    "Close": "Cerrar",
    "Connection": "Conexión",
    "Console output copied to clipboard.":
        "Salida de la consola copiada al portapapeles.",
    "Country destinations bypass the VPN directly through the ISP; other traffic remains inside the VPN.":
        "Los destinos nacionales omiten el VPN directamente a través del ISP; el resto del tráfico permanece dentro del VPN.",
    "Create": "Crear",
    "Create new list": "Crear nueva lista",
    "Custom Bypass Rules": "Reglas de omisión personalizadas",
    "Custom Location Lists": "Listas de ubicaciones personalizadas",
    "Default Hotspot Route": "Ruta de punto de acceso predeterminado",
    "Deselect all": "Deseleccionar todo",
    "Diagnostic Terminal Output": "Salida del terminal de diagnóstico",
    "Diagnostics & Health": "Diagnóstico y salud",
    "Direct (Bypass VPN)": "Directo (evitar VPN)",
    "Domains, IPv4 addresses or CIDRs that always bypass the VPN":
        "Dominios, direcciones IPv4 o CIDRs que siempre omiten VPN",
    "Done": "Listo",
    "Emergency Stop": "Parada de emergencia",
    "Emergency Stop executed: Processes terminated and physical network unjammed.":
        "Parada de emergencia ejecutada: procesos finalizados y red física liberada.",
    "Endpoint Candidates": "Candidatos de punto final",
    "Enforce Quota": "Aplicar cuota",
    "Error": "Error",
    "Explain": "Explique la política",
    "Explain why a destination routes via VPN or Direct ISP, with rule priority matching.":
        "Explica por qué un destino se enruta a través de VPN o ISP directo, con coincidencia de prioridad de regla.",
    "Export the selected server list as JSON and TXT files.":
        "Exporte la lista de servidores seleccionados como archivos JSON y TXT.",
    "FASTEST ⚡": "MÁS RÁPIDO ⚡",
    "Firefox Account": "Cuenta Firefox",
    "Firefox VPN": "Firefox VPN",
    "Firefox data allowance": "Firefox asignación de datos",
    "Force HTTPS traffic through TCP/TLS for consistent filtering.":
        "Fuerce el tráfico HTTPS a través de TCP/TLS para un filtrado consistente.",
    "Force Hotspot VPN DNS": "Forzar punto de acceso VPN DNS",
    "Force VPN": "Forzar VPN",
    "Force VPN Encrypted": "Forzar VPN cifrado",
    "Guest Hotspot": "Hotspot de invitado",
    "HTTP/2 CONNECT": "HTTP/2 CONECTAR",
    "Harmoney": "Harmoney",
    "Harmoney Pro": "Harmoney Pro",
    "Harmoney Smart": "Harmoney Smart",
    "Host and Hotspot clients": "Clientes de host y hotspot",
    "Host machine only": "Solo máquina host",
    "Hotspot & Devices": "Hotspot y dispositivos",
    "Hotspot Doctor & Diagnostics":
        "Reparación y diagnóstico del punto de acceso",
    "Hotspot IPv6 Policy": "Política de punto de acceso IPv6",
    "Hotspot clients only": "Solo clientes de hotspot",
    "IKEv2": "IKEv2",
    "IPv6 leak protection": "IPv6 protección contra fugas",
    "Import ZIP Archive": "Importar archivo ZIP",
    "Inspect XFRM interface, table 220, IP rules, and verify live connectivity safely.":
        "Inspeccione la interfaz XFRM, la tabla 220, las reglas de IP y verifique la conectividad en vivo de forma segura.",
    "Keep domestic services and banking reachable when the VPN drops":
        "Mantener accesibles los servicios bancarios y los servicios nacionales cuando VPN caiga",
    "Launch direct": "Lanzamiento directo",
    "Live Connection Logs (Stream)":
        "Registros de conexión en vivo (transmisión)",
    "Live Logs": "Registros en vivo",
    "Live Verification": "Verificación en vivo",
    "Live connection events from all providers and protocols":
        "Eventos de conexión en vivo de todos los proveedores y protocolos",
    "Lockdown mode (Kill Switch)": "Modo de bloqueo (Kill Switch)",
    "Logs copied to clipboard (secrets redacted).":
        "Registros copiados al portapapeles (secretos redactados).",
    "Manage VPN Profiles": "Administrar perfiles VPN",
    "Manage connected devices, bandwidth quotas, guest Wi-Fi, and routing policies.":
        "Administre dispositivos conectados, cuotas de ancho de banda, invitados Wi-Fi y políticas de enrutamiento.",
    "Mbps": "Mbps",
    "Network Subnets (CIDRs)": "Subredes de red (CIDRs)",
    "Network unjammed: Kill switch, routes, and XFRM interfaces restored to normal.":
        "Red desbloqueada: el interruptor de apagado, las rutas y las interfaces XFRM se restauraron a la normalidad.",
    "New Custom List": "Nueva lista personalizada",
    "No CIDR rules yet.": "Aún no hay reglas CIDR.",
    "No advanced policy rules configured.":
        "No hay reglas de políticas avanzadas configuradas.",
    "No custom bypass rules.": "Sin reglas de omisión personalizadas.",
    "No custom lists created yet.":
        "Aún no se han creado listas personalizadas.",
    "No devices currently connected to hotspot.":
        "Actualmente no hay dispositivos conectados al punto de acceso. Política",
    "No endpoint candidates configured.":
        "No hay candidatos de punto final configurados.",
    "No matching events yet. Start a VPN connection to collect logs.":
        "Aún no hay eventos coincidentes. Inicie una conexión VPN para recopilar registros.",
    "Notify only": "Notificar solo",
    "Offline cache ready": "Caché sin conexión listo",
    "OpenVPN": "OpenVPN",
    "Operation failed": "Error en la operación",
    "Overall Tunnel Health": "Estado general del túnel",
    "Pause Device Connection": "Pausar la conexión del dispositivo",
    "Ping": "Ping",
    "Prevent connected hotspot clients from communicating directly.":
        "Impide que los clientes de hotspot conectados se comuniquen directamente.",
    "Protected Hotspot Options": "Opciones de punto de acceso protegido",
    "Protection HUD": "HUD de protección",
    "Protection settings are applied by Android VpnService and take effect after reconnecting.":
        "La configuración de protección la aplica Android VpnService y entra en vigor después de volver a conectarse.",
    "Protocol": "Protocolo",
    "Protocol coverage": "Cobertura de protocolo",
    "Provider": "Proveedor",
    "Queued…": "En cola…",
    "Quota Exceeded Action:": "Acción de cuota excedida:",
    "Reconnect the VPN to apply Android CIDR routes.":
        "Vuelva a conectar VPN para aplicar las rutas Android CIDR.",
    "Redirect all device DNS queries to Surfshark DNS.":
        "Redirigir todas las consultas DNS del dispositivo a Surfshark DNS.",
    "Redirect device DNS queries through the selected VPN.":
        "Redirigir consultas DNS del dispositivo a través del VPN seleccionado.",
    "Refresh": "Actualizar",
    "Repair Hotspot Routing": "Reparar enrutamiento de hotspot",
    "Route Explain": "Explicación de ruta",
    "Route IPv6 through supported tunnels; reconnect to apply":
        "Enrute IPv6 a través de túneles admitidos; reconectarse para aplicar",
    "Route Table & XFRM Verification": "Tabla de rutas y verificación XFRM",
    "Route specific destinations through Direct, Force VPN, or Block.":
        "Enruta destinos específicos a través de Directo, Forzar VPN o Bloquear.",
    "Route test": "Prueba de ruta Prueba",
    "Routing Policy:": "Política de enrutamiento:",
    "Run Hotspot Doctor": "Ejecute Hotspot Doctor",
    "Safe Apply & LKG": "Aplicación segura y LKG",
    "Save": "Guardar",
    "Secure VPN DNS": "Seguro VPN DNS",
    "Select all": "Seleccionar todo",
    "Start Guest": "Iniciar invitado",
    "Start Guest Hotspot": "Iniciar el punto de acceso para invitados",
    "Start Guest Wi-Fi": "Iniciar invitado Wi-Fi",
    "Stop Guest": "Detener invitado",
    "Support bundle exported and copied to clipboard.":
        "Paquete de soporte exportado y copiado al portapapeles.",
    "Surfshark": "Surfshark",
    "Talker Logs": "Registros de hablantes",
    "Test": "Prueba",
    "Throttle to 128kbit/s": "Acelerar a 128 kbit/s",
    "Tunnel path audits, leak tests, latency probes, and runtime telemetry":
        "Auditorías de ruta de túnel, pruebas de fugas, sondas de latencia y telemetría en tiempo de ejecución",
    "VPN Debug Logs": "VPN Registros de depuración",
    "WireGuard": "WireGuard",
    "by MilMit": "por MilMit",
    "اسکن خودکار این دستگاه": "Escaneo automático de este dispositivo",
    "اعمال در تنظیمات": "Aplicar a la configuración",
    "انصراف": "Cancelar",
    "این شناسه به عنوان اثرانگشت سخت‌افزاری (Hardware Device ID) برای احراز هویت دستگاه در سرور استفاده می‌شود. می‌توانید مقادیر را تغییر دهید یا خودکار دریافت کنید:":
        "Esta ID se utiliza como huella digital de hardware (Hardware Device ID) para autenticar el dispositivo en el servidor. Puede cambiar los valores u obtener automáticamente:",
    "باز کردن پوشه": "Abrir carpeta",
    "برای بارگذاری سرورها، اشتراک خود را وارد کنید":
        "Iniciar sesión para cargar servidores",
    "بستن": "Cerrar",
    "تست اتصال": "Prueba de conexión",
    "تنظیمات اتصال سرویس": "Configuración de conexión del servicio",
    "تنظیمات سرور": "Configuración del servidor",
    "تولید شناسه سخت‌افزاری دستگاه": "Generar ID de hardware del dispositivo",
    "جهت اتصال آسان‌تر از خط فرمان (رمز عبور متن آشکار ذخیره می‌شود)":
        "para facilitar la conexión desde la línea de comandos (la contraseña se almacena en texto sin cifrar)",
    "خروجی‌گرفتن از پروفایل‌های اتصال": "Generación de perfiles de conexión",
    "دریافت خودکار از سخت‌افزار سیستم":
        "Obtener automáticamente del hardware del sistema",
    "ذخیره تنظیمات": "Guardar configuración",
    "ذخیره نام کاربری و رمز عبور در فایل متنی":
        "Guarde el nombre de usuario y la contraseña en el archivo de texto",
    "رمز عبور (Password)": "Contraseña",
    "شروع استخراج": "Iniciar extracción",
    "شناسه سخت‌افزاری به مقدار پیش‌فرض سرور بازنشانی شد.":
        "El identificador de hardware se restablece al valor predeterminado del servidor.",
    "شناسه سخت‌افزاری دستگاه با موفقیت تنظیم شد.":
        "La ID de hardware del dispositivo se ha configurado correctamente.",
    "شناسه نهایی تولیدشده (SHA-256):": "ID final generado (SHA-256):",
    "شناسه پیش‌فرض سرور": "ID de servidor predeterminado",
    "فایل‌ها با موفقیت استخراج شدند.": "Los archivos se extrajeron con éxito.",
    "محل ذخیره پیش‌فرض:": "Ubicación de almacenamiento predeterminada:",
    "نام کاربری (Username)": "Nombre de usuario",
    "ورود با موفقیت انجام شد و فهرست سرورها به‌روزرسانی گردید.":
        "El inicio de sesión se realizó correctamente y se actualizó la lista de servidores.",
    "ورود به حساب Harmoney Pro": "Iniciar sesión Harmoney Pro",
    "ورود مقادیر و ساخت دستی": "Ingresar valores y construir manualmente",
    "ورود و بارگذاری سرورها": "Iniciar sesión y cargar servidores",
    "پیش‌فرض سرور": "Servidor predeterminado",
    "پیکربندی سرور (پیش‌فرض سورس کد - فقط در حالت Debug)":
        "Configuración del servidor (código fuente predeterminado, solo en modo de depuración)",
    "API Settings": "Configuración de API",
    "Add subscription": "Agregar suscripción",
    "ACTIVE": "ACTIVO",
    "Add at least one application to turn this on.":
        "Agregue al menos una aplicación para activar esto.",
    "-- ms": "-- EM",
    "Add application (.exe)": "Agregar aplicación (.exe)",
    "Add an HTTP or HTTPS subscription URL. Links are stored securely on this device.":
        "Agregue una URL de suscripción HTTP o HTTPS. Los enlaces se almacenan de forma segura en este dispositivo.",
    "Applications": "Aplicaciones",
    "Bypass": "Derivación",
    "Bypassing": "evitando",
    "CONNECT": "CONECTAR",
    "Add an application before enabling app bypass.":
        "Agregue una aplicación antes de habilitar la omisión de aplicaciones.",
    "Check status": "comprobar estado",
    "Battery Optimization Active (Doze Mode)":
        "Optimización de batería activa (modo Doze)",
    "Active Surfshark Protocol": "Protocolo activo de Surfshark",
    "Active": "Activo",
    "Cisco": "cisco",
    "Choose your desired VPN network provider":
        "Elija el proveedor de red VPN que desee",
    "Android Lockdown is active": "El bloqueo de Android está activo",
    "Android supports IPv4 and IPv6 CIDR bypass. Reconnect the VPN after changing these routes; app bypass also takes effect after reconnect.":
        "Android admite la omisión de CIDR IPv4 e IPv6. Vuelva a conectar la VPN después de cambiar estas rutas; La omisión de la aplicación también entra en vigor después de volver a conectarse.",
    "CONNECTING": "CONECTANDO",
    "A VPN operation is already running. Please wait for its status to update.":
        "Ya se está ejecutando una operación VPN. Espere a que se actualice su estado.",
    "Choose QR image": "Elige imagen QR",
    "Clear": "Claro",
    "All": "Todo",
    "App language": "Idioma de la aplicación",
    "Configure": "Configurar",
    "CONNECTED": "CONECTADO",
    "Disconnect": "Desconectar",
    "Cancel Test": "Cancelar prueba",
    "Change": "Cambiar",
    "Download": "Descargar",
    "Disabled": "Desactivado",
    "Country IPv4 ranges bypass the VPN after reconnecting. App bypass uses the Windows physical interface and requires the MilMit service.":
        "Los rangos de IPv4 de los países omiten la VPN después de volver a conectarse. La omisión de aplicaciones utiliza la interfaz física de Windows y requiere el servicio MilMit.",
    "Clear stored credentials from this device":
        "Borrar las credenciales almacenadas de este dispositivo",
    "Disconnect is taking longer than expected. You can try again.":
        "La desconexión está tardando más de lo esperado. Puedes intentarlo de nuevo.",
    "Enable Hotspot Sharing (ICS)":
        "Habilitar el uso compartido de puntos de acceso (ICS)",
    "Connecting": "Conectando",
    "Enable Lockdown in Android VPN settings":
        "Habilite el bloqueo en la configuración de VPN de Android",
    "Copied!": "¡Copiado!",
    "DISCONNECTING": "DESCONECTANDO",
    "Configures Windows ICS for the VPN adapter when Mobile Hotspot is active. The app verifies the ICS binding; client Internet traffic still needs an end-to-end check.":
        "Configura Windows ICS para el adaptador VPN cuando Mobile Hotspot está activo. La aplicación verifica el enlace de ICS; El tráfico de Internet del cliente aún necesita una verificación de un extremo a otro.",
    "Country bypass DAT rules updated. Reconnect VPN to apply.":
        "Se actualizaron las reglas DAT para omitir el país. Vuelva a conectar la VPN para aplicar.",
    "Enable app bypass": "Habilitar omisión de aplicaciones",
    "Enable Split Tunneling": "Habilitar túnel dividido",
    "Enable per-app bypass": "Habilitar omisión por aplicación",
    "Credentials encrypted in privileged platform keystore":
        "Credenciales cifradas en un almacén de claves de plataforma privilegiada",
    "Disabled: all traffic routes securely through encrypted VPN tunnel.":
        "Deshabilitado: todo el tráfico se dirige de forma segura a través de un túnel VPN cifrado.",
    "FireTunnel authenticates with Firefox Accounts. Credentials are sent only to the root-isolated native helper; tokens never enter Flutter storage.":
        "FireTunnel se autentica con cuentas de Firefox. Las credenciales se envían únicamente al asistente nativo aislado de raíz; Los tokens nunca ingresan al almacenamiento de Flutter.",
    "Encrypted tunnel verified with zero packet leakage.":
        "Túnel cifrado verificado sin fuga de paquetes.",
    "Connected": "Conectado",
    "DISCONNECTED": "DESCONECTADO",
    "Favorites": "Favoritos",
    "Disable Optimization": "Desactivar optimización",
    "Firefox Account Email / User":
        "Correo electrónico/usuario de la cuenta de Firefox",
    "Firefox Account credentials are sent directly to Mozilla by the local Windows helper. The password is not saved; only the account tokens needed for future connections are stored locally.":
        "Las credenciales de la cuenta de Firefox se envían directamente a Mozilla mediante el asistente local de Windows. La contraseña no se guarda; sólo los tokens de cuenta necesarios para futuras conexiones se almacenan localmente.",
    "Firefox Account credentials are sent directly to Mozilla by the native Android engine. Encrypted tokens never enter Flutter storage.":
        "Las credenciales de la cuenta de Firefox se envían directamente a Mozilla mediante el motor nativo de Android. Los tokens cifrados nunca ingresan al almacenamiento de Flutter.",
    "Export Servers": "Servidores de exportación",
    "Enabled for Harmoney": "Habilitado para armonía",
    "Copy Report": "Copiar informe",
    "Firefox VPN protocol": "Protocolo VPN de Firefox",
    "Country & App Bypass": "Omitir país y aplicación",
    "Firefox VPN Token & Auth": "Token y autenticación de VPN de Firefox",
    "Hardware Profile: Dell Latitude 7210 & Intel / Cellular LTE":
        "Perfil de hardware: Dell Latitude 7210 e Intel/Cellular LTE",
    "Inactive": "Inactivo",
    "Harmoney Pro Sign In Required":
        "Es necesario iniciar sesión en Harmoney Pro",
    "Harmoney Pro Connection Error": "Error de conexión de Harmoney Pro",
    "Harmoney Anti-Censorship Core": "Núcleo anticensura de Harmoney",
    "Live Speed & Traffic": "Velocidad y tráfico en vivo",
    "Harmoney Pro Service": "Servicio Harmony Pro",
    "Hotspot Inactive": "Punto de acceso inactivo",
    "Last Speed Benchmark:": "Última prueba de velocidad:",
    "Import ZIP": "Importar ZIP",
    "Hardware-backed encryption: Credentials are encrypted in platform vault.":
        "Cifrado respaldado por hardware: las credenciales se cifran en la bóveda de la plataforma.",
    "Hotspot Active": "Punto de acceso activo",
    "KEY REQUIRED": "LLAVE REQUERIDA",
    "Logout": "Cerrar sesión",
    "History": "Historia",
    "Manage": "Administrar",
    "Live bandwidth, data accounting & quota":
        "Ancho de banda en vivo, contabilidad de datos y cuotas",
    "Log in to account": "Iniciar sesión en la cuenta",
    "Locations & Routes": "Ubicaciones y rutas",
    "Login Required": "Iniciar sesión requerido",
    "Live Real-Time Speed": "Velocidad en vivo en tiempo real",
    "Logged In": "Iniciado sesión",
    "Live Active": "Vive Activo",
    "Load apps": "Cargar aplicaciones",
    "Manage Account": "Administrar cuenta",
    "No applications selected.": "No se seleccionaron aplicaciones.",
    "Monthly Data Quota": "Cuota de datos mensual",
    "No favorite servers.": "No hay servidores favoritos.",
    "FireTunnel Token / Password": "Token / Contraseña de FireTunnel",
    "Firefox VPN Account": "Cuenta VPN de Firefox",
    "No imported profiles found.\\nImport a ZIP archive from Surfshark Manual Setup.":
        "No se encontraron perfiles importados.\\nImporte un archivo ZIP desde la configuración manual de Surfshark.",
    "Online": "En línea",
    "Not supported on this platform.": "No es compatible con esta plataforma.",
    "No active hotspot interface detected on system.":
        "No se detectó ninguna interfaz de punto de acceso activo en el sistema.",
    "Open": "Abierto",
    "No servers found.": "No se encontraron servidores.",
    "Manage Firefox VPN Account": "Administrar cuenta VPN de Firefox",
    "Private connection service": "Servicio de conexión privada",
    "Per-app VPN bypass": "Omisión de VPN por aplicación",
    "Quota information unavailable": "Información de cuota no disponible",
    "No speed tests recorded yet.":
        "Aún no se han registrado pruebas de velocidad.",
    "No Limit Set": "Sin límite establecido",
    "Monthly Allowance": "Asignación mensual",
    "Per-app bypass": "Omisión por aplicación",
    "Ping All": "Hacer ping a todo",
    "Load installed applications to configure per-app bypass.":
        "Cargue las aplicaciones instaladas para configurar la omisión por aplicación.",
    "Recent": "Reciente",
    "Open Mobile Hotspot": "Abrir punto de acceso móvil",
    "Re-login": "Volver a iniciar sesión",
    "Ready to perform live routing and security audits.":
        "Listo para realizar enrutamiento en vivo y auditorías de seguridad.",
    "Per-app bypass is not supported on this platform.":
        "Esta plataforma no admite la omisión por aplicación.",
    "Refresh status & quota": "Actualizar estado y cuota",
    "Refresh Status": "Actualizar estado",
    "Re-login to account": "Vuelva a iniciar sesión en la cuenta",
    "Retry": "Rever",
    "Manage connection, security, and appearance":
        "Administrar la conexión, la seguridad y la apariencia",
    "Restore": "Restaurar",
    "Remaining traffic:": "Tráfico restante:",
    "Renew session tokens or switch account":
        "Renovar tokens de sesión o cambiar de cuenta",
    "Query latest session and traffic quota":
        "Consultar la última sesión y la cuota de tráfico",
    "On Android and Linux the selected subscription is used, but the VPN core may choose a different node from it.":
        "En Android y Linux se utiliza la suscripción seleccionada, pero el núcleo VPN puede elegir un nodo diferente.",
    "Scan QR": "Escanear QR",
    "Route chosen applications or network subnets outside the VPN.":
        "Enrute las aplicaciones elegidas o las subredes de red fuera de la VPN.",
    "Routes from Xray, WARP and MASQUE configurations. Connection is shown after traffic verification.":
        "Rutas desde configuraciones Xray, WARP y MASQUE. La conexión se muestra después de la verificación del tráfico.",
    "Saved subscriptions": "Suscripciones guardadas",
    "Save securely": "Guardar de forma segura",
    "Recommended Fast Routes": "Rutas rápidas recomendadas",
    "Save Quota": "Guardar cuota",
    "Repair ICS": "Reparar ICS",
    "Select Surfshark Protocol": "Seleccione el protocolo Surfshark",
    "Selected country IP ranges bypass the VPN. Reconnect after changing rules. Domain-only rules need DNS-aware routing.":
        "Los rangos de IP de países seleccionados omiten la VPN. Vuelva a conectarse después de cambiar las reglas. Las reglas de solo dominio necesitan enrutamiento compatible con DNS.",
    "Select a location or use fastest server":
        "Seleccione una ubicación o use el servidor más rápido",
    "No subscriptions added yet.": "Aún no se han agregado suscripciones.",
    "Select applications to bypass the VPN tunnel and connect directly to the internet.":
        "Seleccione aplicaciones para evitar el túnel VPN y conectarse directamente a Internet.",
    "Service username and password required for handshakes":
        "Se requiere nombre de usuario y contraseña del servicio para los apretones de manos",
    "Settings": "Ajustes",
    "Service Password / Private Key": "Contraseña de servicio/clave privada",
    "Selected apps use the physical network directly. Other apps continue using the VPN.":
        "Las aplicaciones seleccionadas utilizan la red física directamente. Otras aplicaciones continúan usando la VPN.",
    "Security session expired; please sign in again to use servers.":
        "La sesión de seguridad expiró; inicie sesión nuevamente para usar los servidores.",
    "Select VPN Provider": "Seleccione proveedor de VPN",
    "Run Full Audit": "Ejecutar auditoría completa",
    "Scan subscription QR": "Escanear suscripción QR",
    "Session Download:": "Descarga de la sesión:",
    "Service Credentials & Keys": "Credenciales y claves de servicio",
    "Sign in": "Iniciar sesión",
    "Set Quota": "Establecer cuota",
    "Sign In to Harmoney Pro": "Iniciar sesión en Harmoney Pro",
    "Session Duration": "Duración de la sesión",
    "Split Tunneling": "Túnel dividido",
    "Service Username / Key ID": "Nombre de usuario del servicio/ID de clave",
    "Select": "Seleccionar",
    "Share secure encrypted tunnel with phones & tablets":
        "Comparta un túnel cifrado seguro con teléfonos y tabletas",
    "Smart Service Suitability": "Idoneidad del servicio inteligente",
    "Sign In": "Iniciar sesión",
    "System Apps": "Aplicaciones del sistema",
    "Show All Servers": "Mostrar todos los servidores",
    "Sign In / Account": "Iniciar sesión / Cuenta",
    "Speed Test History": "Historial de pruebas de velocidad",
    "Session Expired": "Sesión caducada",
    "Session Upload:": "Carga de sesión:",
    "Start Speed Test": "Iniciar prueba de velocidad",
    "Sort by latency": "Ordenar por latencia",
    "Sign in to activate Firefox tunnel and view data quota.":
        "Inicia sesión para activar el túnel de Firefox y ver la cuota de datos.",
    "Temporary isolated guest Wi-Fi with automatic expiry and subnet isolation.":
        "Wi-Fi para invitados aislado temporalmente con caducidad automática y aislamiento de subred.",
    "Theme": "Tema",
    "Surfshark Service Account": "Cuenta de servicio Surfshark",
    "To prevent Android from killing the VPN connection in background, disable battery optimization for this app.":
        "Para evitar que Android interrumpa la conexión VPN en segundo plano, desactive la optimización de la batería para esta aplicación.",
    "Unknown": "Desconocido",
    "UNKNOWN": "DESCONOCIDO",
    "The previous VPN operation timed out. You can try again.":
        "La operación VPN anterior expiró. Puedes intentarlo de nuevo.",
    "Speed report copied to clipboard!":
        "¡Informe de velocidad copiado al portapapeles!",
    "Upload": "Subir",
    "Verify": "Verificar",
    "Test all": "Probar todo",
    "Unlimited (Off)": "Ilimitado (desactivado)",
    "Uses Windows native per-process routing to send selected apps directly over your physical network adapter. Requires a compatible Windows build and the MilMit VPN service.":
        "Utiliza el enrutamiento por proceso nativo de Windows para enviar aplicaciones seleccionadas directamente a través de su adaptador de red físico. Requiere una compilación de Windows compatible y el servicio MilMit VPN.",
    "WFP applies the rules independently of IKEv2, WireGuard, OpenVPN, and Xray. UDP relay is not complete yet, so apps requiring UDP will not be fully bypassed.":
        "WFP aplica las reglas independientemente de IKEv2, WireGuard, OpenVPN y Xray. La retransmisión UDP aún no está completa, por lo que las aplicaciones que requieran UDP no se omitirán por completo.",
    "You will receive visual alerts when reaching this limit.":
        "Recibirás alertas visuales cuando alcances este límite.",
    "Windows per-app bypass routes selected apps directly through the physical adapter, independent of the active VPN protocol. Windows build support and the privileged MilMit service are required.":
        "La omisión por aplicación de Windows enruta las aplicaciones seleccionadas directamente a través del adaptador físico, independientemente del protocolo VPN activo. Se requiere soporte de compilación de Windows y el servicio privilegiado MilMit.",
    "VPN-to-hotspot ICS binding verified.":
        "Enlace ICS de VPN a punto de acceso verificado.",
    "VPN service credentials saved securely.":
        "Credenciales del servicio VPN guardadas de forma segura.",
    "VPN Hotspot Sharing (Windows ICS)":
        "Compartir punto de acceso VPN (Windows ICS)",
    "Show servers": "Mostrar servidores",
    "Traffic Analytics": "Análisis de tráfico",
    "Unlimited quota": "Cuota ilimitada",
    "Update Country Rules": "Actualizar las reglas del país",
    "User Apps": "Aplicaciones de usuario",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Windows IKEv2 route injection remains IPv4-only. Reconnect after changing rules.":
        "Las rutas de rayos X seleccionan rangos IPv4/IPv6 y la lista de dominios iraníes incluida directamente. La inyección de ruta IKEv2 de Windows sigue siendo solo IPv4. Vuelva a conectarse después de cambiar las reglas.",
    "Quick connect": "Conexión rápida",
    "Tunnel-managed DNS; reconnect to apply":
        "DNS administrado por túnel; reconectarse para aplicar",
    "No imported profiles found.\nImport a ZIP archive from Surfshark Manual Setup.":
        "No se encontraron perfiles importados.\nImporta un archivo ZIP desde la configuración manual de Surfshark.",
    "Download Harmoney Pro": "Descargar Harmoney Pro",
    "More protocols and connection options":
        "\u004d\u00e1\u0073\u0020\u0070\u0072\u006f\u0074\u006f\u0063\u006f\u006c\u006f\u0073\u0020\u0079\u0020\u006f\u0070\u0063\u0069\u006f\u006e\u0065\u0073\u0020\u0064\u0065\u0020\u0063\u006f\u006e\u0065\u0078\u0069\u00f3\u006e",
    "The Harmoney Pro download link is not available yet.":
        "\u0045\u006c\u0020\u0065\u006e\u006c\u0061\u0063\u0065\u0020\u0064\u0065\u0020\u0064\u0065\u0073\u0063\u0061\u0072\u0067\u0061\u0020\u0064\u0065\u0020\u0048\u0061\u0072\u006d\u006f\u006e\u0065\u0079\u0020\u0050\u0072\u006f\u0020\u0061\u00fa\u006e\u0020\u006e\u006f\u0020\u0065\u0073\u0074\u00e1\u0020\u0064\u0069\u0073\u0070\u006f\u006e\u0069\u0062\u006c\u0065\u002e",
    "Select connection service": "Seleccionar servicio de conexión",
    "Connection service": "Servicio de conexión",
    "Personal subscriptions": "Suscripciones personales",
    "Smart routing and personal subscriptions":
        "Enrutamiento inteligente y suscripciones personales",
    "Lightweight Firefox VPN tunnel": "Túnel ligero de Firefox VPN",
    "Rules apply to the active VPN route. UDP relay is not complete yet; apps requiring UDP may not be fully bypassed.":
        "Las reglas se aplican a la ruta VPN activa. La retransmisión UDP aún no está completa; es posible que las aplicaciones que necesitan UDP no puedan omitir la VPN por completo.",
    "Hotspot sharing preference saved.":
        "Se guardaron las preferencias para compartir el punto de acceso.",
    "Save preference": "Guardar preferencia",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Reconnect after changing rules.":
        "Xray enruta directamente los rangos IPv4/IPv6 seleccionados y la lista de dominios iraníes incluida. Vuelve a conectarte después de cambiar las reglas.",
    "Auditing…": "Auditando…",
    "Checking account…": "Comprobando la cuenta…",
    "Checking secure credential vault…":
        "Comprobando el almacén seguro de credenciales…",
    "Checking…": "Comprobando…",
    "Disconnect is still being processed…":
        "La solicitud de desconexión aún se está procesando…",
    "Disconnect requested…": "Desconexión solicitada…",
    "Disconnecting…": "Desconectando…",
    "Importing…": "Importando…",
    "Signing in…": "Iniciando sesión…",
    "Starting connection…": "Iniciando conexión…",
    "Updating…": "Actualizando…",
    "Working…": "Procesando…",
    "Establishing secure tunnel…": "Estableciendo un túnel seguro…",
  },
  "fr": {
    "0 GB (Off)": "0 Go (Désactivé)",
    "100 GB": "100 Go",
    "200 GB": "200 Go",
    "50 GB": "50 Go",
    "A calmer connection. A brighter world.":
        "Une connexion plus apaisée. Un monde plus lumineux.",
    "Add": "Ajouter",
    "Add CIDR rule": "Ajouter une règle CIDR",
    "Add Policy": "Ajouter une stratégie",
    "Add Routing Policy Rule": "Ajouter une règle de stratégie de routage",
    "Add split-tunnel CIDR": "Ajouter un tunnel divisé CIDR",
    "Advanced Policy Rules": "Règles de stratégie avancées",
    "Advanced Routing & Protection": "Routage et protection avancés",
    "Allow IPv6": "Autoriser IPv6",
    "Allow Iran traffic during Lockdown":
        "Autoriser le trafic iranien pendant le verrouillage",
    "Always-on VPN": "Toujours actif VPN",
    "Always-on and Lockdown cover Firefox, WireGuard, IKEv2 and OpenVPN. DNS and IPv6 policies are enforced by each active tunnel profile.":
        "Couverture permanente et verrouillée Firefox, WireGuard, IKEv2 et OpenVPN. Les stratégies DNS et IPv6 sont appliquées par chaque profil de tunnel actif.",
    "Always-on and Lockdown cover supported VPN connections. DNS and IPv6 policies are enforced by the active tunnel.":
        "toujours allumé et verrouillé prend en charge les connexions VPN. Les stratégies DNS et IPv6 sont appliquées par le tunnel actif.",
    "Android Protection": "Protection Android",
    "Android app bypass applies after reconnecting the VPN.":
        "Le contournement de l'application Android s'applique après la reconnexion du VPN.",
    "Auto (Fallback)": "Auto (repli)",
    "Block Destination": "Bloquer la destination",
    "Block IPv6 (Leak Protection)":
        "Bloquer IPv6 (protection contre les fuites)",
    "Block Internet Access": "Bloquer l'accès Internet",
    "Block QUIC (UDP 443)": "Bloc QUIC (UDP 443)",
    "Block all internet leaks when the VPN drops unexpectedly":
        "Bloquez toutes les fuites Internet lorsque le VPN tombe de manière inattendue",
    "Block connections without VPN": "Bloquer les connexions sans VPN",
    "Block internet": "Bloquer Internet",
    "Bypass VPN": "Contourner VPN",
    "Cancel": "Annuler",
    "Client Isolation": "Isolation du client",
    "Close": "Fermer",
    "Connection": "Connexion",
    "Console output copied to clipboard.":
        "Sortie de la console copiée dans le presse-papiers.",
    "Country destinations bypass the VPN directly through the ISP; other traffic remains inside the VPN.":
        "Les destinations nationales contournent le VPN directement via le FAI ; le reste du trafic reste à l'intérieur du VPN.",
    "Create": "Créer",
    "Create new list": "Créer une nouvelle liste",
    "Custom Bypass Rules": "Règles de contournement personnalisées",
    "Custom Location Lists": "Listes d'emplacements personnalisés",
    "Default Hotspot Route": "Route de point d'accès par défaut",
    "Deselect all": "Tout désélectionner",
    "Diagnostic Terminal Output": "Sortie du terminal de diagnostic",
    "Diagnostics & Health": "Diagnostic et santé",
    "Direct (Bypass VPN)": "Direct (contourner VPN)",
    "Domains, IPv4 addresses or CIDRs that always bypass the VPN":
        "Domaines, adresses IPv4 ou CIDRs qui contournent toujours le VPN",
    "Done": "Terminé",
    "Emergency Stop": "Arrêt d'urgence",
    "Emergency Stop executed: Processes terminated and physical network unjammed.":
        "Arrêt d'urgence exécuté : processus terminés et réseau physique débloqué.",
    "Endpoint Candidates": "Points de terminaison candidats",
    "Enforce Quota": "Appliquer le quota",
    "Error": "Erreur",
    "Explain": "Expliquez la stratégie",
    "Explain why a destination routes via VPN or Direct ISP, with rule priority matching.":
        "Explique pourquoi une destination est acheminée via VPN ou Direct ISP, avec correspondance de priorité de règle.",
    "Export the selected server list as JSON and TXT files.":
        "Exportez la liste des serveurs sélectionnés sous forme de fichiers JSON et TXT.",
    "FASTEST ⚡": "LE PLUS RAPIDE ⚡",
    "Firefox Account": "Firefox Compte",
    "Firefox VPN": "Firefox VPN",
    "Firefox data allowance": "Firefox allocation de données",
    "Force HTTPS traffic through TCP/TLS for consistent filtering.":
        "Forcez le trafic HTTPS via TCP/TLS pour un filtrage cohérent.",
    "Force Hotspot VPN DNS": "Forcer le point d'accès VPN DNS",
    "Force VPN": "Forcer VPN",
    "Force VPN Encrypted": "Forcer VPN Chiffré",
    "Guest Hotspot": "Point d'accès invité",
    "HTTP/2 CONNECT": "HTTP/2 CONNECTEZ",
    "Harmoney": "Harmoney",
    "Harmoney Pro": "Harmoney Pro",
    "Harmoney Smart": "Harmoney Smart",
    "Host and Hotspot clients": "Clients hôtes et hotspot",
    "Host machine only": "Machine hôte uniquement",
    "Hotspot & Devices": "Hotspot et appareils",
    "Hotspot Doctor & Diagnostics": "Réparation et diagnostic du point d’accès",
    "Hotspot IPv6 Policy": "Point d'accès IPv6 Politique",
    "Hotspot clients only": "Clients Hotspot uniquement",
    "IKEv2": "IKEv2",
    "IPv6 leak protection": "IPv6 protection contre les fuites",
    "Import ZIP Archive": "Importer l'archive ZIP",
    "Inspect XFRM interface, table 220, IP rules, and verify live connectivity safely.":
        "Inspectez l'interface XFRM, la table 220, les règles IP et vérifiez la connectivité en direct en toute sécurité.",
    "Keep domestic services and banking reachable when the VPN drops":
        "Maintenir les services nationaux et les services bancaires accessibles lorsque le VPN abandonne",
    "Launch direct": "Lancement direct",
    "Live Connection Logs (Stream)": "Journaux de connexion en direct (flux)",
    "Live Logs": "Journaux en direct",
    "Live Verification": "Vérification en direct",
    "Live connection events from all providers and protocols":
        "Événements de connexion en direct de tous les fournisseurs et protocoles",
    "Lockdown mode (Kill Switch)": "Mode de verrouillage (Kill Switch)",
    "Logs copied to clipboard (secrets redacted).":
        "Journaux copiés dans le presse-papiers (secrets expurgés).",
    "Manage VPN Profiles": "Gérer les profils VPN",
    "Manage connected devices, bandwidth quotas, guest Wi-Fi, and routing policies.":
        "Gérer les appareils connectés, les quotas de bande passante, l'invité Wi-Fi et les politiques de routage.",
    "Mbps": "Mbps",
    "Network Subnets (CIDRs)": "Sous-réseaux réseau (CIDRs)",
    "Network unjammed: Kill switch, routes, and XFRM interfaces restored to normal.":
        "Réseau non bloqué : kill switch, routes et interfaces XFRM restaurées à la normale.",
    "New Custom List": "Nouvelle liste personnalisée",
    "No CIDR rules yet.": "Aucune règle CIDR pour l'instant.",
    "No advanced policy rules configured.":
        "Aucune règle de stratégie avancée configurée.",
    "No custom bypass rules.": "Aucune règle de contournement personnalisée.",
    "No custom lists created yet.":
        "Aucune liste personnalisée n'a encore été créée.",
    "No devices currently connected to hotspot.":
        "Aucun appareil actuellement connecté au point d'accès. Politique",
    "No endpoint candidates configured.":
        "Aucun point de terminaison candidat configuré.",
    "No matching events yet. Start a VPN connection to collect logs.":
        "Aucun événement correspondant pour l'instant. Démarrez une connexion VPN pour collecter les journaux.",
    "Notify only": "Notifier uniquement",
    "Offline cache ready": "Cache hors ligne prêt",
    "OpenVPN": "OpenVPN",
    "Operation failed": "Échec de l'opération",
    "Overall Tunnel Health": "État général du tunnel",
    "Pause Device Connection": "Suspendre la connexion du périphérique",
    "Ping": "Ping",
    "Prevent connected hotspot clients from communicating directly.":
        "Empêche les clients hotspot connectés de communiquer directement.",
    "Protected Hotspot Options": "Options de point d'accès protégé",
    "Protection HUD": "HUD de protection",
    "Protection settings are applied by Android VpnService and take effect after reconnecting.":
        "Les paramètres de protection sont appliqués par Android VpnService et prennent effet après la reconnexion.",
    "Protocol": "Protocole",
    "Protocol coverage": "Couverture du protocole",
    "Provider": "Fournisseur",
    "Queued…": "En file d'attente…",
    "Quota Exceeded Action:": "Action de dépassement du quota :",
    "Reconnect the VPN to apply Android CIDR routes.":
        "Reconnectez le VPN pour appliquer les routes Android CIDR.",
    "Redirect all device DNS queries to Surfshark DNS.":
        "Rediriger toutes les requêtes DNS du périphérique vers Surfshark DNS.",
    "Redirect device DNS queries through the selected VPN.":
        "Rediriger les requêtes du périphérique DNS via le VPN sélectionné. Le couvercle",
    "Refresh": "Actualiser",
    "Repair Hotspot Routing": "Réparer le routage des points d'accès",
    "Route Explain": "Route Expliquer",
    "Route IPv6 through supported tunnels; reconnect to apply":
        "Acheminez IPv6 via les tunnels pris en charge ; reconnectez-vous pour appliquer",
    "Route Table & XFRM Verification": "et vérification XFRM",
    "Route specific destinations through Direct, Force VPN, or Block.":
        "Acheminer des destinations spécifiques via Direct, Forcer VPN ou Bloquer.",
    "Route test": "Test de route",
    "Routing Policy:": "Politique de routage :",
    "Run Hotspot Doctor": "Exécuter Hotspot Doctor",
    "Safe Apply & LKG": "Application sécurisée et LKG",
    "Save": "Enregistrer",
    "Secure VPN DNS": "Sécurisé VPN DNS",
    "Select all": "Tout sélectionner",
    "Start Guest": "Démarrer l'invité",
    "Start Guest Hotspot": "Démarrer le point d'accès invité",
    "Start Guest Wi-Fi": "Démarrer l'invité Wi-Fi",
    "Stop Guest": "Arrêter l'invité",
    "Support bundle exported and copied to clipboard.":
        "Ensemble de support exporté et copié dans le presse-papiers.",
    "Surfshark": "Surfshark",
    "Talker Logs": "Journaux des interlocuteurs",
    "Test": "Test",
    "Throttle to 128kbit/s": "Limiter la vitesse à 128 kbit/s",
    "Tunnel path audits, leak tests, latency probes, and runtime telemetry":
        "Audits de chemin de tunnel, tests de fuite, sondes de latence et télémétrie d'exécution",
    "VPN Debug Logs": "VPN Journaux de débogage",
    "WireGuard": "WireGuard",
    "by MilMit": "par MilMit",
    "اسکن خودکار این دستگاه": "Analyse automatique de cet appareil",
    "اعمال در تنظیمات": "Appliquer aux paramètres",
    "انصراف": "Annuler",
    "این شناسه به عنوان اثرانگشت سخت‌افزاری (Hardware Device ID) برای احراز هویت دستگاه در سرور استفاده می‌شود. می‌توانید مقادیر را تغییر دهید یا خودکار دریافت کنید:":
        "Cet identifiant est utilisé comme empreinte matérielle (Hardware Device ID) pour authentifier le périphérique sur le serveur. Vous pouvez modifier les valeurs ou obtenir automatiquement :",
    "باز کردن پوشه": "Ouvrir le dossier",
    "برای بارگذاری سرورها، اشتراک خود را وارد کنید":
        "Connexion pour charger les serveurs",
    "بستن": "Fermer",
    "تست اتصال": "Test de connexion",
    "تنظیمات اتصال سرویس": "Paramètres de connexion au service",
    "تنظیمات سرور": "Paramètres du serveur",
    "تولید شناسه سخت‌افزاری دستگاه": "Générer l'ID matériel du périphérique",
    "جهت اتصال آسان‌تر از خط فرمان (رمز عبور متن آشکار ذخیره می‌شود)":
        "pour une connexion plus facile à partir de la ligne de commande (le mot de passe est stocké en texte clair)",
    "خروجی‌گرفتن از پروفایل‌های اتصال": "Sortie des profils de connexion",
    "دریافت خودکار از سخت‌افزار سیستم":
        "Obtenir automatiquement à partir du matériel système",
    "ذخیره تنظیمات": "Enregistrer les paramètres",
    "ذخیره نام کاربری و رمز عبور در فایل متنی":
        "Enregistrez le nom d'utilisateur et le mot de passe dans le fichier texte",
    "رمز عبور (Password)": "Mot de passe",
    "شروع استخراج": "Démarrer l'extraction",
    "شناسه سخت‌افزاری به مقدار پیش‌فرض سرور بازنشانی شد.":
        "L'identifiant matériel a été réinitialisé à la valeur par défaut du serveur.",
    "شناسه سخت‌افزاری دستگاه با موفقیت تنظیم شد.":
        "L'ID matériel de l'appareil a été défini avec succès.",
    "شناسه نهایی تولیدشده (SHA-256):": "ID final généré (SHA-256) :",
    "شناسه پیش‌فرض سرور": "ID de serveur par défaut",
    "فایل‌ها با موفقیت استخراج شدند.":
        "Les fichiers ont été extraits avec succès.",
    "محل ذخیره پیش‌فرض:": "Emplacement de stockage par défaut :",
    "نام کاربری (Username)": "Nom d'utilisateur",
    "ورود با موفقیت انجام شد و فهرست سرورها به‌روزرسانی گردید.":
        "La connexion a réussi et la liste des serveurs a été mise à jour.",
    "ورود به حساب Harmoney Pro": "Connexion Harmoney Pro",
    "ورود مقادیر و ساخت دستی": "Saisir les valeurs et créer manuellement",
    "ورود و بارگذاری سرورها": "Connexion et chargement des serveurs",
    "پیش‌فرض سرور": "Serveur par défaut",
    "پیکربندی سرور (پیش‌فرض سورس کد - فقط در حالت Debug)":
        "Configuration du serveur (code source par défaut - uniquement en mode débogage)",
    "-- ms": "-- MS",
    "Active": "Actif",
    "Active Surfshark Protocol": "Protocole Surfshark actif",
    "Add an HTTP or HTTPS subscription URL. Links are stored securely on this device.":
        "Ajoutez une URL d'abonnement HTTP ou HTTPS. Les liens sont stockés en toute sécurité sur cet appareil.",
    "Add at least one application to turn this on.":
        "Ajoutez au moins une application pour l'activer.",
    "Add an application before enabling app bypass.":
        "Ajoutez une application avant d'activer le contournement d'application.",
    "Bypassing": "Contournement",
    "CONNECT": "CONNECTER",
    "CONNECTING": "DE LIAISON",
    "Add subscription": "Ajouter un abonnement",
    "All": "Tous",
    "Battery Optimization Active (Doze Mode)":
        "Optimisation de la batterie active (mode Doze)",
    "Change": "Changement",
    "App language": "Langue de l'application",
    "Bypass": "By-pass",
    "Applications": "Applications",
    "API Settings": "Paramètres de l'API",
    "ACTIVE": "ACTIF",
    "Cancel Test": "Annuler le test",
    "Check status": "Vérifier l'état",
    "Android Lockdown is active": "Le verrouillage Android est actif",
    "Clear stored credentials from this device":
        "Effacer les informations d'identification stockées sur cet appareil",
    "Android supports IPv4 and IPv6 CIDR bypass. Reconnect the VPN after changing these routes; app bypass also takes effect after reconnect.":
        "Android prend en charge le contournement CIDR IPv4 et IPv6. Reconnectez le VPN après avoir modifié ces routes ; Le contournement de l'application prend également effet après la reconnexion.",
    "A VPN operation is already running. Please wait for its status to update.":
        "Une opération VPN est déjà en cours. Veuillez attendre que son statut soit mis à jour.",
    "Choose your desired VPN network provider":
        "Choisissez votre fournisseur de réseau VPN souhaité",
    "Configure": "Configurer",
    "Connected": "Connecté",
    "Copied!": "Copié!",
    "Connecting": "De liaison",
    "Disabled": "Désactivé",
    "Credentials encrypted in privileged platform keystore":
        "Informations d'identification chiffrées dans le magasin de clés de la plateforme privilégiée",
    "Country IPv4 ranges bypass the VPN after reconnecting. App bypass uses the Windows physical interface and requires the MilMit service.":
        "Les plages IPv4 nationales contournent le VPN après la reconnexion. Le contournement d'application utilise l'interface physique Windows et nécessite le service MilMit.",
    "Copy Report": "Copier le rapport",
    "Choose QR image": "Choisissez l'image QR",
    "Country & App Bypass": "Contournement du pays et de l'application",
    "Cisco": "Cisco",
    "Add application (.exe)": "Ajouter une application (.exe)",
    "Country bypass DAT rules updated. Reconnect VPN to apply.":
        "Mise à jour des règles de contournement des pays DAT. Reconnectez le VPN pour appliquer.",
    "Clear": "Clair",
    "Configures Windows ICS for the VPN adapter when Mobile Hotspot is active. The app verifies the ICS binding; client Internet traffic still needs an end-to-end check.":
        "Configure Windows ICS pour l’adaptateur VPN lorsque Mobile Hotspot est actif. L'application vérifie la liaison ICS ; le trafic Internet des clients nécessite toujours une vérification de bout en bout.",
    "CONNECTED": "CONNECTÉ",
    "Enable per-app bypass": "Activer le contournement par application",
    "Disable Optimization": "Désactiver l'optimisation",
    "Enable app bypass": "Activer le contournement des applications",
    "DISCONNECTING": "DÉCONNEXION",
    "Enable Hotspot Sharing (ICS)": "Activer le partage de point d'accès (ICS)",
    "Disconnect is taking longer than expected. You can try again.":
        "La déconnexion prend plus de temps que prévu. Vous pouvez réessayer.",
    "Enable Lockdown in Android VPN settings":
        "Activer le verrouillage dans les paramètres VPN Android",
    "Disconnect": "Déconnecter",
    "Download": "Télécharger",
    "Disabled: all traffic routes securely through encrypted VPN tunnel.":
        "Désactivé : tout le trafic est acheminé en toute sécurité via un tunnel VPN crypté.",
    "FireTunnel Token / Password": "Jeton FireTunnel/Mot de passe",
    "Firefox VPN protocol": "Protocole VPN Firefox",
    "Export Servers": "Exporter des serveurs",
    "Enabled for Harmoney": "Activé pour Harmoney",
    "History": "Histoire",
    "Enable Split Tunneling": "Activer le tunneling fractionné",
    "Encrypted tunnel verified with zero packet leakage.":
        "Tunnel crypté vérifié sans fuite de paquets.",
    "Hardware-backed encryption: Credentials are encrypted in platform vault.":
        "Chiffrement matériel : les informations d'identification sont chiffrées dans le coffre-fort de la plateforme.",
    "FireTunnel authenticates with Firefox Accounts. Credentials are sent only to the root-isolated native helper; tokens never enter Flutter storage.":
        "FireTunnel s'authentifie avec les comptes Firefox. Les informations d'identification sont envoyées uniquement à l'assistant natif isolé par la racine ; les jetons n’entrent jamais dans le stockage Flutter.",
    "Firefox Account credentials are sent directly to Mozilla by the local Windows helper. The password is not saved; only the account tokens needed for future connections are stored locally.":
        "Les informations d'identification du compte Firefox sont envoyées directement à Mozilla par l'assistant Windows local. Le mot de passe n'est pas enregistré ; seuls les jetons de compte nécessaires aux connexions futures sont stockés localement.",
    "Firefox Account credentials are sent directly to Mozilla by the native Android engine. Encrypted tokens never enter Flutter storage.":
        "Les informations d'identification du compte Firefox sont envoyées directement à Mozilla par le moteur Android natif. Les jetons cryptés n'entrent jamais dans le stockage Flutter.",
    "Favorites": "Favoris",
    "Hardware Profile: Dell Latitude 7210 & Intel / Cellular LTE":
        "Profil matériel : Dell Latitude 7210 et Intel/Cellular LTE",
    "Harmoney Pro Service": "Service professionnel Harmoney",
    "Hotspot Inactive": "Point d'accès inactif",
    "Firefox VPN Account": "Compte VPN Firefox",
    "Import ZIP": "Importer un code postal",
    "Firefox Account Email / User": "E-mail/utilisateur du compte Firefox",
    "Inactive": "Inactif",
    "Harmoney Anti-Censorship Core": "Noyau anti-censure Harmoney",
    "Harmoney Pro Connection Error": "Erreur de connexion Harmoney Pro",
    "DISCONNECTED": "DÉCONNECTÉ",
    "Load apps": "Charger des applications",
    "KEY REQUIRED": "CLÉ REQUISE",
    "Live Active": "En direct actif",
    "Last Speed Benchmark:": "Dernière référence de vitesse :",
    "Firefox VPN Token & Auth": "Jeton VPN et authentification Firefox",
    "Locations & Routes": "Emplacements et itinéraires",
    "Logout": "Déconnexion",
    "Manage": "Gérer",
    "Manage Account": "Gérer le compte",
    "Load installed applications to configure per-app bypass.":
        "Chargez les applications installées pour configurer le contournement par application.",
    "Monthly Data Quota": "Quota de données mensuel",
    "Live Real-Time Speed": "Vitesse en temps réel",
    "Live Speed & Traffic": "Vitesse et trafic en direct",
    "No Limit Set": "Aucune limite définie",
    "Manage connection, security, and appearance":
        "Gérer la connexion, la sécurité et l'apparence",
    "Hotspot Active": "Point d'accès actif",
    "Harmoney Pro Sign In Required": "Harmoney Pro Connexion requise",
    "Live bandwidth, data accounting & quota":
        "Bande passante en direct, comptabilité des données et quota",
    "Log in to account": "Connectez-vous au compte",
    "Online": "En ligne",
    "No applications selected.": "Aucune candidature sélectionnée.",
    "No active hotspot interface detected on system.":
        "Aucune interface de point d'accès actif détectée sur le système.",
    "No subscriptions added yet.": "Aucun abonnement ajouté pour l'instant.",
    "No speed tests recorded yet.":
        "Aucun test de vitesse enregistré pour l'instant.",
    "Not supported on this platform.":
        "Non pris en charge sur cette plateforme.",
    "Manage Firefox VPN Account": "Gérer le compte VPN Firefox",
    "No servers found.": "Aucun serveur trouvé.",
    "Monthly Allowance": "Allocation mensuelle",
    "No favorite servers.": "Aucun serveur favori.",
    "Logged In": "Connecté",
    "Open": "Ouvrir",
    "Login Required": "Connexion requise",
    "Per-app VPN bypass": "Contournement VPN par application",
    "Open Mobile Hotspot": "Ouvrir un point d'accès mobile",
    "Ping All": "Cingler tout",
    "Per-app bypass": "Contournement par application",
    "No imported profiles found.\\nImport a ZIP archive from Surfshark Manual Setup.":
        "Aucun profil importé trouvé.\\nImportez une archive ZIP à partir de la configuration manuelle de Surfshark.",
    "Recent": "Récent",
    "Private connection service": "Service de connexion privée",
    "Quick connect": "Connexion rapide",
    "Re-login": "Reconnectez-vous",
    "Re-login to account": "Reconnectez-vous au compte",
    "Retry": "Réessayer",
    "Restore": "Restaurer",
    "Save securely": "Enregistrez en toute sécurité",
    "Refresh Status": "Actualiser le statut",
    "Refresh status & quota": "Actualiser le statut et le quota",
    "Recommended Fast Routes": "Itinéraires rapides recommandés",
    "Repair ICS": "Réparer le SCI",
    "Per-app bypass is not supported on this platform.":
        "Le contournement par application n'est pas pris en charge sur cette plate-forme.",
    "Renew session tokens or switch account":
        "Renouveler les jetons de session ou changer de compte",
    "Quota information unavailable":
        "Informations sur les quotas indisponibles",
    "Query latest session and traffic quota":
        "Interroger la dernière session et le quota de trafic",
    "Ready to perform live routing and security audits.":
        "Prêt à effectuer des audits de routage et de sécurité en direct.",
    "On Android and Linux the selected subscription is used, but the VPN core may choose a different node from it.":
        "Sous Android et Linux, l'abonnement sélectionné est utilisé, mais le cœur VPN peut en choisir un autre nœud.",
    "Run Full Audit": "Exécuter un audit complet",
    "Save Quota": "Enregistrer le quota",
    "Scan subscription QR": "Scanner le QR d'abonnement",
    "Saved subscriptions": "Abonnements enregistrés",
    "Route chosen applications or network subnets outside the VPN.":
        "Acheminez les applications ou les sous-réseaux de réseau choisis en dehors du VPN.",
    "Routes from Xray, WARP and MASQUE configurations. Connection is shown after traffic verification.":
        "Itinéraires à partir des configurations Xray, WARP et MASQUE. La connexion est affichée après vérification du trafic.",
    "Select Surfshark Protocol": "Sélectionnez le protocole Surfshark",
    "Security session expired; please sign in again to use servers.":
        "La session de sécurité a expiré ; veuillez vous reconnecter pour utiliser les serveurs.",
    "Scan QR": "Scanner le QR",
    "Select": "Sélectionner",
    "Selected apps use the physical network directly. Other apps continue using the VPN.":
        "Les applications sélectionnées utilisent directement le réseau physique. D'autres applications continuent d'utiliser le VPN.",
    "Selected country IP ranges bypass the VPN. Reconnect after changing rules. Domain-only rules need DNS-aware routing.":
        "Les plages IP de pays sélectionnés contournent le VPN. Reconnectez-vous après avoir modifié les règles. Les règles de domaine uniquement nécessitent un routage compatible DNS.",
    "Settings": "Paramètres",
    "Service username and password required for handshakes":
        "Nom d'utilisateur et mot de passe du service requis pour les poignées de main",
    "Sign in": "Se connecter",
    "Sign In": "Se connecter",
    "Session Expired": "Session expirée",
    "Sign In to Harmoney Pro": "Connectez-vous à Harmoney Pro",
    "Select VPN Provider": "Sélectionnez le fournisseur VPN",
    "Show servers": "Afficher les serveurs",
    "Show All Servers": "Afficher tous les serveurs",
    "Session Upload:": "Téléchargement de session :",
    "Session Download:": "Téléchargement de la séance :",
    "Service Credentials & Keys": "Identifiants et clés de service",
    "Service Username / Key ID": "Nom d'utilisateur du service/ID de clé",
    "Select a location or use fastest server":
        "Sélectionnez un emplacement ou utilisez le serveur le plus rapide",
    "Session Duration": "Durée de la séance",
    "Remaining traffic:": "Trafic restant :",
    "Sign in to activate Firefox tunnel and view data quota.":
        "Connectez-vous pour activer le tunnel Firefox et afficher le quota de données.",
    "Select applications to bypass the VPN tunnel and connect directly to the internet.":
        "Sélectionnez les applications pour contourner le tunnel VPN et vous connecter directement à Internet.",
    "Share secure encrypted tunnel with phones & tablets":
        "Partagez un tunnel crypté sécurisé avec des téléphones et des tablettes",
    "Set Quota": "Définir un quota",
    "Sort by latency": "Trier par latence",
    "Theme": "Thème",
    "Service Password / Private Key": "Mot de passe du service/clé privée",
    "Speed report copied to clipboard!":
        "Rapport de vitesse copié dans le presse-papier !",
    "Start Speed Test": "Démarrer le test de vitesse",
    "Speed Test History": "Historique des tests de vitesse",
    "Test all": "Testez tout",
    "Split Tunneling": "Tunneling fractionné",
    "Sign In / Account": "Connexion / Compte",
    "System Apps": "Applications système",
    "To prevent Android from killing the VPN connection in background, disable battery optimization for this app.":
        "Pour empêcher Android de supprimer la connexion VPN en arrière-plan, désactivez l'optimisation de la batterie pour cette application.",
    "Traffic Analytics": "Analyse du trafic",
    "Unlimited (Off)": "Illimité (Désactivé)",
    "Smart Service Suitability": "Adéquation du service intelligent",
    "Unknown": "Inconnu",
    "Tunnel-managed DNS; reconnect to apply":
        "DNS géré par tunnel ; reconnecter pour postuler",
    "Upload": "Télécharger",
    "UNKNOWN": "INCONNU",
    "VPN-to-hotspot ICS binding verified.": "Liaison ICS VPN-hotspot vérifiée.",
    "Surfshark Service Account": "Compte de service Surfshark",
    "VPN service credentials saved securely.":
        "Les identifiants du service VPN sont enregistrés en toute sécurité.",
    "Update Country Rules": "Mettre à jour les règles du pays",
    "User Apps": "Applications utilisateur",
    "Unlimited quota": "Quotas illimités",
    "Windows per-app bypass routes selected apps directly through the physical adapter, independent of the active VPN protocol. Windows build support and the privileged MilMit service are required.":
        "Le contournement Windows par application achemine les applications sélectionnées directement via l'adaptateur physique, indépendamment du protocole VPN actif. La prise en charge de la build Windows et le service privilégié MilMit sont requis.",
    "Uses Windows native per-process routing to send selected apps directly over your physical network adapter. Requires a compatible Windows build and the MilMit VPN service.":
        "Utilise le routage natif par processus Windows pour envoyer les applications sélectionnées directement via votre carte réseau physique. Nécessite une version Windows compatible et le service VPN MilMit.",
    "You will receive visual alerts when reaching this limit.":
        "Vous recevrez des alertes visuelles lorsque vous atteindrez cette limite.",
    "The previous VPN operation timed out. You can try again.":
        "L'opération VPN précédente a expiré. Vous pouvez réessayer.",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Windows IKEv2 route injection remains IPv4-only. Reconnect after changing rules.":
        "Xray achemine directement les plages IPv4/IPv6 sélectionnées et la liste de domaines iraniens groupée. L’injection de route Windows IKEv2 reste uniquement IPv4. Reconnectez-vous après avoir modifié les règles.",
    "VPN Hotspot Sharing (Windows ICS)":
        "Partage de point d'accès VPN (Windows ICS)",
    "WFP applies the rules independently of IKEv2, WireGuard, OpenVPN, and Xray. UDP relay is not complete yet, so apps requiring UDP will not be fully bypassed.":
        "Le PAM applique les règles indépendamment de IKEv2, WireGuard, OpenVPN et Xray. Le relais UDP n'est pas encore terminé, donc les applications nécessitant UDP ne seront pas entièrement contournées.",
    "Verify": "Vérifier",
    "Temporary isolated guest Wi-Fi with automatic expiry and subnet isolation.":
        "Wi-Fi invité isolé temporairement avec expiration automatique et isolation de sous-réseau.",
    "No imported profiles found.\nImport a ZIP archive from Surfshark Manual Setup.":
        "Aucun profil importé.\nImportez une archive ZIP depuis la configuration manuelle de Surfshark.",
    "Download Harmoney Pro": "Télécharger Harmoney Pro",
    "More protocols and connection options":
        "\u0050\u006c\u0075\u0073\u0020\u0064\u0065\u0020\u0070\u0072\u006f\u0074\u006f\u0063\u006f\u006c\u0065\u0073\u0020\u0065\u0074\u0020\u0064\u2019\u006f\u0070\u0074\u0069\u006f\u006e\u0073\u0020\u0064\u0065\u0020\u0063\u006f\u006e\u006e\u0065\u0078\u0069\u006f\u006e",
    "The Harmoney Pro download link is not available yet.":
        "\u004c\u0065\u0020\u006c\u0069\u0065\u006e\u0020\u0064\u0065\u0020\u0074\u00e9\u006c\u00e9\u0063\u0068\u0061\u0072\u0067\u0065\u006d\u0065\u006e\u0074\u0020\u0064\u0065\u0020\u0048\u0061\u0072\u006d\u006f\u006e\u0065\u0079\u0020\u0050\u0072\u006f\u0020\u006e\u2019\u0065\u0073\u0074\u0020\u0070\u0061\u0073\u0020\u0065\u006e\u0063\u006f\u0072\u0065\u0020\u0064\u0069\u0073\u0070\u006f\u006e\u0069\u0062\u006c\u0065\u002e",
    "Select connection service": "Sélectionner le service de connexion",
    "Connection service": "Service de connexion",
    "Personal subscriptions": "Abonnements personnels",
    "Smart routing and personal subscriptions":
        "Routage intelligent et abonnements personnels",
    "Lightweight Firefox VPN tunnel": "Tunnel Firefox VPN léger",
    "Rules apply to the active VPN route. UDP relay is not complete yet; apps requiring UDP may not be fully bypassed.":
        "Les règles s’appliquent à la route VPN active. Le relais UDP n’est pas encore complet ; les applications qui en ont besoin pourraient ne pas contourner entièrement le VPN.",
    "Hotspot sharing preference saved.":
        "Préférences de partage du point d’accès enregistrées.",
    "Save preference": "Enregistrer les préférences",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Reconnect after changing rules.":
        "Xray achemine directement les plages IPv4/IPv6 sélectionnées et la liste de domaines iraniens incluse. Reconnectez-vous après toute modification des règles.",
    "Auditing…": "Vérification en cours…",
    "Checking account…": "Vérification du compte…",
    "Checking secure credential vault…":
        "Vérification du coffre-fort d’identifiants…",
    "Checking…": "Vérification…",
    "Disconnect is still being processed…":
        "La demande de déconnexion est toujours en cours…",
    "Disconnect requested…": "Déconnexion demandée…",
    "Disconnecting…": "Déconnexion…",
    "Importing…": "Importation…",
    "Signing in…": "Connexion au compte…",
    "Starting connection…": "Connexion en cours…",
    "Updating…": "Mise à jour…",
    "Working…": "Traitement en cours…",
    "Establishing secure tunnel…": "Établissement du tunnel sécurisé…",
  },
  "de": {
    "0 GB (Off)": "0 GB (Aus)",
    "100 GB": "100 GB",
    "200 GB": "200 GB",
    "50 GB": "50 GB",
    "A calmer connection. A brighter world.":
        "Eine ruhigere Verbindung. Eine hellere Welt.",
    "Add": "hinzugefügt.",
    "Add CIDR rule": "CIDR-Regel hinzufügen",
    "Add Policy": "Richtlinie hinzufügen",
    "Add Routing Policy Rule": "Routing-Richtlinienregel hinzufügen",
    "Add split-tunnel CIDR": "Split-Tunnel hinzufügen CIDR",
    "Advanced Policy Rules": "Erweiterte Richtlinienregeln",
    "Advanced Routing & Protection": "Erweitertes Routing und Schutz",
    "Allow IPv6": "Erlauben IPv6",
    "Allow Iran traffic during Lockdown":
        "Iran-Verkehr während des Lockdowns zulassen",
    "Always-on VPN": "Immer eingeschaltet VPN",
    "Always-on and Lockdown cover Firefox, WireGuard, IKEv2 and OpenVPN. DNS and IPv6 policies are enforced by each active tunnel profile.":
        "Always-on- und Lockdown-Abdeckung Firefox, WireGuard, IKEv2 und OpenVPN. Die Richtlinien DNS und IPv6 werden von jedem aktiven Tunnelprofil erzwungen.",
    "Always-on and Lockdown cover supported VPN connections. DNS and IPv6 policies are enforced by the active tunnel.":
        "Always-on- und Lockdown-Abdeckung unterstützt VPN-Verbindungen. Die Richtlinien DNS und IPv6 werden vom aktiven Tunnel erzwungen.",
    "Android Protection": "Android Schutz",
    "Android app bypass applies after reconnecting the VPN.":
        "Die Android-App-Umgehung erfolgt nach dem erneuten Verbinden des VPN.",
    "Auto (Fallback)": "Automatisch (Ausweichmodus)",
    "Block Destination": "Ziel blockieren",
    "Block IPv6 (Leak Protection)": "Blockieren IPv6 (Auslaufschutz)",
    "Block Internet Access": "Internetzugriff blockieren",
    "Block QUIC (UDP 443)": "QUIC blockieren (UDP 443)",
    "Block all internet leaks when the VPN drops unexpectedly":
        "Blockiert alle Internetlecks, wenn der VPN unerwartet abfällt",
    "Block connections without VPN": "Verbindungen ohne VPN blockieren",
    "Block internet": "Internet blockieren",
    "Bypass VPN": "VPN",
    "Cancel": "Abbrechen",
    "Client Isolation": "Client-Isolation",
    "Close": "Schließen",
    "Connection": "Verbindung",
    "Console output copied to clipboard.":
        "Konsolenausgabe in die Zwischenablage kopiert.",
    "Country destinations bypass the VPN directly through the ISP; other traffic remains inside the VPN.":
        "Länderziele umgehen das VPN direkt über den ISP; Der übrige Datenverkehr verbleibt im VPN.",
    "Create": "Erstellen",
    "Create new list": "Neue Liste erstellen",
    "Custom Bypass Rules": "Benutzerdefinierte Umgehungsregeln",
    "Custom Location Lists": "Benutzerdefinierte Standortlisten",
    "Default Hotspot Route": "Standard-Hotspot-Route",
    "Deselect all": "Alle abwählen",
    "Diagnostic Terminal Output": "Diagnoseterminalausgabe",
    "Diagnostics & Health": "Diagnostik und Gesundheit",
    "Direct (Bypass VPN)": "Direkt (VPN umgehen)",
    "Domains, IPv4 addresses or CIDRs that always bypass the VPN":
        "Domänen, IPv4-Adressen oder CIDRs, die immer das VPN",
    "Done": "Fertig",
    "Emergency Stop": "Not-Aus",
    "Emergency Stop executed: Processes terminated and physical network unjammed.":
        "Notstopp ausgeführt: Prozesse beendet und physisches Netzwerk freigegeben.",
    "Endpoint Candidates": "Endpunktkandidaten",
    "Enforce Quota": "Kontingent erzwingen",
    "Error": "Fehler",
    "Explain": "Erläutern Sie die",
    "Explain why a destination routes via VPN or Direct ISP, with rule priority matching.":
        "Erklären Sie, warum ein Ziel über VPN oder Direct ISP mit Regelprioritätsanpassung weitergeleitet wird.",
    "Export the selected server list as JSON and TXT files.":
        "Exportieren Sie die ausgewählte Serverliste als JSON- und TXT-Dateien.",
    "FASTEST ⚡": "AM SCHNELLSTEN ⚡",
    "Firefox Account": "Firefox Konto",
    "Firefox VPN": "Firefox VPN",
    "Firefox data allowance": "Firefox Datenmenge",
    "Force HTTPS traffic through TCP/TLS for consistent filtering.":
        "Erzwingen Sie HTTPS-Verkehr über TCP/TLS für eine konsistente Filterung.",
    "Force Hotspot VPN DNS": "Hotspot erzwingen VPN DNS",
    "Force VPN": "Erzwingen VPN",
    "Force VPN Encrypted": "Erzwingen VPN Verschlüsselt",
    "Guest Hotspot": "Gast-Hotspot",
    "HTTP/2 CONNECT": "HTTP/2 VERBINDEN",
    "Harmoney": "Harmoney",
    "Harmoney Pro": "Harmoney Pro",
    "Harmoney Smart": "Harmoney Smart",
    "Host and Hotspot clients": "Host- und Hotspot-Clients",
    "Host machine only": "Nur Host-Maschine",
    "Hotspot & Devices": "Hotspot und Geräte",
    "Hotspot Doctor & Diagnostics": "Hotspot-Reparatur und Diagnose",
    "Hotspot IPv6 Policy": "Hotspot IPv6 Richtlinie",
    "Hotspot clients only": "Nur Hotspot-Clients",
    "IKEv2": "IKEv2",
    "IPv6 leak protection": "IPv6 Auslaufschutz",
    "Import ZIP Archive": "Importieren Sie das ZIP-Archiv",
    "Inspect XFRM interface, table 220, IP rules, and verify live connectivity safely.":
        "Überprüfen Sie die XFRM-Schnittstelle, Tabelle 220 und IP-Regeln und überprüfen Sie die Live-Konnektivität sicher.",
    "Keep domestic services and banking reachable when the VPN drops":
        "Halten Sie Inlandsdienste und Banken erreichbar, wenn der VPN fällt",
    "Launch direct": "Direkt starten",
    "Live Connection Logs (Stream)": "Live-Verbindungsprotokolle (Stream)",
    "Live Logs": "Live-Protokolle",
    "Live Verification": "Live-Verifizierung",
    "Live connection events from all providers and protocols":
        "Live-Verbindungsereignisse von allen Anbietern und Protokollen",
    "Lockdown mode (Kill Switch)": "Sperrmodus (Kill Switch)",
    "Logs copied to clipboard (secrets redacted).":
        "Protokolle in die Zwischenablage kopiert (Geheimnisse geschwärzt).",
    "Manage VPN Profiles": "VPN Profile verwalten",
    "Manage connected devices, bandwidth quotas, guest Wi-Fi, and routing policies.":
        "Verbundene Geräte, Bandbreitenkontingente, Gast-Wi-Fi und Routing-Richtlinien verwalten.",
    "Mbps": "Mbps",
    "Network Subnets (CIDRs)": "Netzwerk-Subnetze (CIDRs)",
    "Network unjammed: Kill switch, routes, and XFRM interfaces restored to normal.":
        "Netzwerk frei: Kill-Switch, Routen und XFRM-Schnittstellen auf Normalzustand zurückgesetzt.",
    "New Custom List": "Neue benutzerdefinierte Liste",
    "No CIDR rules yet.": "Noch keine CIDR-Regeln.",
    "No advanced policy rules configured.":
        "Keine erweiterten Richtlinienregeln konfiguriert.",
    "No custom bypass rules.":
        "hinzufügen. Keine benutzerdefinierten Umgehungsregeln.",
    "No custom lists created yet.":
        "Es wurden noch keine benutzerdefinierten Listen erstellt.",
    "No devices currently connected to hotspot.":
        "Derzeit sind keine Geräte mit dem Hotspot verbunden.",
    "No endpoint candidates configured.":
        "Keine Endpunktkandidaten konfiguriert.",
    "No matching events yet. Start a VPN connection to collect logs.":
        "Noch keine passenden Veranstaltungen. Starten Sie eine VPN-Verbindung, um Protokolle zu sammeln.",
    "Notify only": "Nur benachrichtigen",
    "Offline cache ready": "Offline-Cache bereit",
    "OpenVPN": "OpenVPN",
    "Operation failed": "Vorgang fehlgeschlagen.",
    "Overall Tunnel Health": "Gesamtzustand des Tunnels",
    "Pause Device Connection": "Geräteverbindung anhalten",
    "Ping": "Ping",
    "Prevent connected hotspot clients from communicating directly.":
        "Verhindert, dass verbundene Hotspot-Clients direkt kommunizieren.",
    "Protected Hotspot Options": "Geschützte Hotspot-Optionen",
    "Protection HUD": "Schutz-HUD",
    "Protection settings are applied by Android VpnService and take effect after reconnecting.":
        "Schutzeinstellungen werden von Android VpnService angewendet und werden nach erneuter Verbindung wirksam.",
    "Protocol": "Protokoll",
    "Protocol coverage": "Protokollabdeckung",
    "Provider": "Anbieter",
    "Queued…": "In der Warteschlange…",
    "Quota Exceeded Action:": "Kontingent überschritten Aktion:",
    "Reconnect the VPN to apply Android CIDR routes.":
        "umgehen VPN erneut anschließen, um Android CIDR-Routen anzuwenden.",
    "Redirect all device DNS queries to Surfshark DNS.":
        "Leiten Sie alle Geräte-DNS-Abfragen an Surfshark DNS um.",
    "Redirect device DNS queries through the selected VPN.":
        "Leitet Geräte-DNS-Anfragen über das ausgewählte VPN um.",
    "Refresh": "Aktualisieren",
    "Repair Hotspot Routing": "Hotspot-Routing reparieren",
    "Route Explain": "Route erklären",
    "Route IPv6 through supported tunnels; reconnect to apply":
        "Leiten Sie IPv6 durch unterstützte Tunnel. Stellen Sie die Verbindung erneut her, um sich zu bewerben",
    "Route Table & XFRM Verification": "Routentabelle und XFRM-Verifizierung",
    "Route specific destinations through Direct, Force VPN, or Block.":
        "Leiten Sie bestimmte Ziele über Direkt, Erzwingen VPN oder Blockieren weiter.",
    "Route test": "Routentest",
    "Routing Policy:": "Routing-Richtlinie:",
    "Run Hotspot Doctor": "Hotspot Doctor ausführen",
    "Safe Apply & LKG": "Sicher anwenden & letzte gute Konfiguration",
    "Save": "Speichern",
    "Secure VPN DNS": "Sicherer VPN DNS",
    "Select all": "Alle auswählen",
    "Start Guest": "Gast starten",
    "Start Guest Hotspot": "Gast-Hotspot starten",
    "Start Guest Wi-Fi": "Gast starten Wi-Fi",
    "Stop Guest": "Gast stoppen",
    "Support bundle exported and copied to clipboard.":
        "Support-Bundle exportiert und in die Zwischenablage kopiert.",
    "Surfshark": "Surfshark",
    "Talker Logs": "Talker-Protokolle",
    "Test": "Test",
    "Throttle to 128kbit/s": "Drosselung auf 128 kbit/s",
    "Tunnel path audits, leak tests, latency probes, and runtime telemetry":
        "Tunnelpfadprüfungen, Lecktests, Latenzprüfungen und Laufzeittelemetrie",
    "VPN Debug Logs": "VPN Debug-Protokolle",
    "WireGuard": "WireGuard",
    "by MilMit": "von MilMit",
    "اسکن خودکار این دستگاه": "Automatischer Scan dieses Geräts",
    "اعمال در تنظیمات": "Auf Einstellungen anwenden",
    "انصراف": "Abbrechen",
    "این شناسه به عنوان اثرانگشت سخت‌افزاری (Hardware Device ID) برای احراز هویت دستگاه در سرور استفاده می‌شود. می‌توانید مقادیر را تغییر دهید یا خودکار دریافت کنید:":
        "Diese ID wird als Hardware-Fingerabdruck (Hardware Device ID) zur Authentifizierung des Geräts am Server verwendet. Sie können die Werte ändern oder automatisch erhalten:",
    "باز کردن پوشه": "Ordner öffnen",
    "برای بارگذاری سرورها، اشتراک خود را وارد کنید":
        "Anmelden, um Server zu laden",
    "بستن": "Schließen",
    "تست اتصال": "Verbindungstest",
    "تنظیمات اتصال سرویس": "Dienstverbindungseinstellungen",
    "تنظیمات سرور": "Servereinstellungen",
    "تولید شناسه سخت‌افزاری دستگاه": "Geräte-Hardware-ID generieren",
    "جهت اتصال آسان‌تر از خط فرمان (رمز عبور متن آشکار ذخیره می‌شود)":
        "speichern, um die Verbindung über die Befehlszeile zu erleichtern (Passwort wird im Klartext gespeichert)",
    "خروجی‌گرفتن از پروفایل‌های اتصال": "Verbindungsprofile ausgeben",
    "دریافت خودکار از سخت‌افزار سیستم":
        "Automatisch von der Systemhardware abrufen",
    "ذخیره تنظیمات": "Einstellungen speichern",
    "ذخیره نام کاربری و رمز عبور در فایل متنی":
        "Benutzername und Passwort in Textdatei",
    "رمز عبور (Password)": "Passwort",
    "شروع استخراج": "Extraktion starten",
    "شناسه سخت‌افزاری به مقدار پیش‌فرض سرور بازنشانی شد.":
        "Hardware-ID auf Server-Standardwert zurückgesetzt.",
    "شناسه سخت‌افزاری دستگاه با موفقیت تنظیم شد.":
        "Die Hardware-ID des Geräts wurde erfolgreich festgelegt.",
    "شناسه نهایی تولیدشده (SHA-256):": "Endgültige generierte ID (SHA-256):",
    "شناسه پیش‌فرض سرور": "Standard-Server-ID",
    "فایل‌ها با موفقیت استخراج شدند.":
        "Die Dateien wurden erfolgreich extrahiert.",
    "محل ذخیره پیش‌فرض:": "Standardspeicherort:",
    "نام کاربری (Username)": "Benutzername",
    "ورود با موفقیت انجام شد و فهرست سرورها به‌روزرسانی گردید.":
        "Die Anmeldung war erfolgreich und die Liste der Server wurde aktualisiert.",
    "ورود به حساب Harmoney Pro": "Anmelden Harmoney Pro",
    "ورود مقادیر و ساخت دستی": "Werte eingeben und manuell erstellen",
    "ورود و بارگذاری سرورها": "Anmelden und Server laden",
    "پیش‌فرض سرور": "Standardserver",
    "پیکربندی سرور (پیش‌فرض سورس کد - فقط در حالت Debug)":
        "Serverkonfiguration (Standardquellcode – nur im Debug-Modus)",
    "-- ms": "-- MS",
    "ACTIVE": "AKTIV",
    "Active Surfshark Protocol": "Aktives Surfshark-Protokoll",
    "Add an application before enabling app bypass.":
        "Fügen Sie eine Anwendung hinzu, bevor Sie die App-Umgehung aktivieren.",
    "All": "Alle",
    "Add application (.exe)": "Anwendung hinzufügen (.exe)",
    "Applications": "Anwendungen",
    "App language": "App-Sprache",
    "Active": "Aktiv",
    "CONNECT": "VERBINDEN",
    "Battery Optimization Active (Doze Mode)":
        "Batterieoptimierung aktiv (Doze-Modus)",
    "Android Lockdown is active": "Die Android-Sperre ist aktiv",
    "API Settings": "API-Einstellungen",
    "Cisco": "Cisco",
    "Configure": "Konfigurieren",
    "Android supports IPv4 and IPv6 CIDR bypass. Reconnect the VPN after changing these routes; app bypass also takes effect after reconnect.":
        "Android unterstützt die CIDR-Umgehung von IPv4 und IPv6. Verbinden Sie das VPN erneut, nachdem Sie diese Routen geändert haben. Die App-Umgehung wird auch nach erneuter Verbindung wirksam.",
    "Add subscription": "Abonnement hinzufügen",
    "Bypassing": "Umgehung",
    "Bypass": "Bypass",
    "A VPN operation is already running. Please wait for its status to update.":
        "Ein VPN-Vorgang läuft bereits. Bitte warten Sie, bis der Status aktualisiert wird.",
    "Choose QR image": "Wählen Sie QR-Bild",
    "Connected": "Verbunden",
    "Copied!": "Kopiert!",
    "Choose your desired VPN network provider":
        "Wählen Sie Ihren gewünschten VPN-Netzwerkanbieter",
    "CONNECTING": "VERBINDEN",
    "Cancel Test": "Test abbrechen",
    "CONNECTED": "VERBUNDEN",
    "Configures Windows ICS for the VPN adapter when Mobile Hotspot is active. The app verifies the ICS binding; client Internet traffic still needs an end-to-end check.":
        "Konfiguriert Windows ICS für den VPN-Adapter, wenn Mobile Hotspot aktiv ist. Die App überprüft die ICS-Bindung; Der Client-Internetverkehr muss weiterhin einer End-to-End-Prüfung unterzogen werden.",
    "Change": "Ändern",
    "DISCONNECTED": "GETRENNT",
    "Add at least one application to turn this on.":
        "Fügen Sie mindestens eine Anwendung hinzu, um dies zu aktivieren.",
    "Clear stored credentials from this device":
        "Löschen Sie gespeicherte Anmeldeinformationen von diesem Gerät",
    "Disabled": "Deaktiviert",
    "Check status": "Status prüfen",
    "Disconnect": "Trennen",
    "Country bypass DAT rules updated. Reconnect VPN to apply.":
        "Länderspezifische DAT-Umgehungsregeln aktualisiert. Verbinden Sie das VPN erneut, um sich zu bewerben.",
    "Copy Report": "Bericht kopieren",
    "Download": "Herunterladen",
    "Connecting": "Verbinden",
    "Credentials encrypted in privileged platform keystore":
        "Anmeldeinformationen im Schlüsselspeicher einer privilegierten Plattform verschlüsselt",
    "Clear": "Klar",
    "Country IPv4 ranges bypass the VPN after reconnecting. App bypass uses the Windows physical interface and requires the MilMit service.":
        "Länder-IPv4-Bereiche umgehen das VPN nach der erneuten Verbindung. Die App-Umgehung nutzt die physische Windows-Schnittstelle und erfordert den MilMit-Dienst.",
    "Disabled: all traffic routes securely through encrypted VPN tunnel.":
        "Deaktiviert: Der gesamte Datenverkehr wird sicher durch einen verschlüsselten VPN-Tunnel geleitet.",
    "Disable Optimization": "Optimierung deaktivieren",
    "Country & App Bypass": "Länder- und App-Umgehung",
    "Disconnect is taking longer than expected. You can try again.":
        "Die Trennung dauert länger als erwartet. Sie können es noch einmal versuchen.",
    "Favorites": "Favoriten",
    "Enable per-app bypass": "Aktivieren Sie die Umgehung pro App",
    "Enabled for Harmoney": "Für Harmoney aktiviert",
    "Enable Split Tunneling": "Aktivieren Sie Split-Tunneling",
    "Add an HTTP or HTTPS subscription URL. Links are stored securely on this device.":
        "Fügen Sie eine HTTP- oder HTTPS-Abonnement-URL hinzu. Links werden sicher auf diesem Gerät gespeichert.",
    "Encrypted tunnel verified with zero packet leakage.":
        "Verschlüsselter Tunnel, verifiziert ohne Paketlecks.",
    "Firefox Account credentials are sent directly to Mozilla by the native Android engine. Encrypted tokens never enter Flutter storage.":
        "Die Anmeldeinformationen für das Firefox-Konto werden von der nativen Android-Engine direkt an Mozilla gesendet. Verschlüsselte Token gelangen niemals in den Flutter-Speicher.",
    "Export Servers": "Exportserver",
    "Enable app bypass": "Aktivieren Sie die App-Umgehung",
    "FireTunnel authenticates with Firefox Accounts. Credentials are sent only to the root-isolated native helper; tokens never enter Flutter storage.":
        "FireTunnel authentifiziert sich mit Firefox-Konten. Anmeldeinformationen werden nur an den root-isolierten nativen Helfer gesendet; Token gelangen nie in den Flutter-Speicher.",
    "Firefox VPN Token & Auth": "Firefox VPN-Token und Authentifizierung",
    "Firefox Account Email / User": "E-Mail/Benutzer des Firefox-Kontos",
    "FireTunnel Token / Password": "FireTunnel-Token/Passwort",
    "Firefox VPN protocol": "Firefox VPN-Protokoll",
    "Enable Lockdown in Android VPN settings":
        "Aktivieren Sie die Sperrung in den Android-VPN-Einstellungen",
    "Firefox VPN Account": "Firefox VPN-Konto",
    "History": "Geschichte",
    "Harmoney Anti-Censorship Core": "Harmoney Anti-Zensur-Kern",
    "Hardware-backed encryption: Credentials are encrypted in platform vault.":
        "Hardwaregestützte Verschlüsselung: Anmeldeinformationen werden im Plattformtresor verschlüsselt.",
    "Firefox Account credentials are sent directly to Mozilla by the local Windows helper. The password is not saved; only the account tokens needed for future connections are stored locally.":
        "Die Anmeldeinformationen für das Firefox-Konto werden vom lokalen Windows-Hilfsprogramm direkt an Mozilla gesendet. Das Passwort wird nicht gespeichert; Nur die Konto-Tokens, die für zukünftige Verbindungen benötigt werden, werden lokal gespeichert.",
    "DISCONNECTING": "TRENNEN",
    "Hardware Profile: Dell Latitude 7210 & Intel / Cellular LTE":
        "Hardwareprofil: Dell Latitude 7210 und Intel/Cellular LTE",
    "Inactive": "Inaktiv",
    "Hotspot Inactive": "Hotspot inaktiv",
    "Hotspot Active": "Hotspot aktiv",
    "Last Speed Benchmark:": "Last-Speed-Benchmark:",
    "KEY REQUIRED": "SCHLÜSSEL ERFORDERLICH",
    "Live Active": "Live Aktiv",
    "Enable Hotspot Sharing (ICS)": "Hotspot-Freigabe (ICS) aktivieren",
    "Logged In": "Eingeloggt",
    "Manage": "Verwalten",
    "Live Speed & Traffic": "Live-Geschwindigkeit und Verkehr",
    "Load apps": "Apps laden",
    "Locations & Routes": "Standorte und Routen",
    "Live Real-Time Speed": "Live-Geschwindigkeit in Echtzeit",
    "Live bandwidth, data accounting & quota":
        "Live-Bandbreite, Datenabrechnung und Quote",
    "Logout": "Abmelden",
    "Harmoney Pro Service": "Harmoney Pro-Service",
    "Manage connection, security, and appearance":
        "Verwalten Sie Verbindung, Sicherheit und Erscheinungsbild",
    "Import ZIP": "ZIP importieren",
    "Login Required": "Anmeldung erforderlich",
    "Monthly Data Quota": "Monatliches Datenkontingent",
    "Manage Firefox VPN Account": "Verwalten Sie das Firefox-VPN-Konto",
    "Harmoney Pro Sign In Required": "Anmeldung bei Harmoney Pro erforderlich",
    "Monthly Allowance": "Monatlicher Zuschuss",
    "Open": "Offen",
    "Online": "Online",
    "No Limit Set": "Kein Limit festgelegt",
    "Log in to account": "Melden Sie sich bei Ihrem Konto an",
    "No imported profiles found.\\nImport a ZIP archive from Surfshark Manual Setup.":
        "Keine importierten Profile gefunden.\\nImportieren Sie ein ZIP-Archiv aus dem Surfshark Manual Setup.",
    "On Android and Linux the selected subscription is used, but the VPN core may choose a different node from it.":
        "Unter Android und Linux wird das ausgewählte Abonnement verwendet, der VPN-Kern wählt jedoch möglicherweise einen anderen Knoten aus.",
    "Per-app VPN bypass": "VPN-Umgehung pro App",
    "Open Mobile Hotspot": "Öffnen Sie den mobilen Hotspot",
    "No servers found.": "Keine Server gefunden.",
    "No favorite servers.": "Keine Lieblingsserver.",
    "Manage Account": "Konto verwalten",
    "Load installed applications to configure per-app bypass.":
        "Laden Sie installierte Anwendungen, um die Umgehung pro App zu konfigurieren.",
    "No subscriptions added yet.":
        "Es wurden noch keine Abonnements hinzugefügt.",
    "Not supported on this platform.":
        "Auf dieser Plattform nicht unterstützt.",
    "Harmoney Pro Connection Error": "Harmoney Pro-Verbindungsfehler",
    "Query latest session and traffic quota":
        "Fragen Sie die letzte Sitzung und das Verkehrskontingent ab",
    "Per-app bypass": "Umgehung pro App",
    "No active hotspot interface detected on system.":
        "Auf dem System wurde keine aktive Hotspot-Schnittstelle erkannt.",
    "Per-app bypass is not supported on this platform.":
        "Die Umgehung pro App wird auf dieser Plattform nicht unterstützt.",
    "Restore": "Wiederherstellen",
    "Retry": "Wiederholen",
    "Re-login to account": "Melden Sie sich erneut beim Konto an",
    "Re-login": "Melden Sie sich erneut an",
    "Remaining traffic:": "Verbleibender Verkehr:",
    "Repair ICS": "ICS reparieren",
    "Refresh status & quota": "Status und Kontingent aktualisieren",
    "Recommended Fast Routes": "Empfohlene schnelle Routen",
    "Quick connect": "Schnelle Verbindung",
    "Ready to perform live routing and security audits.":
        "Bereit zur Durchführung von Live-Routing und Sicherheitsaudits.",
    "No speed tests recorded yet.":
        "Es wurden noch keine Geschwindigkeitstests aufgezeichnet.",
    "No applications selected.": "Keine Anwendungen ausgewählt.",
    "Ping All": "Alle anpingen",
    "Private connection service": "Privater Verbindungsdienst",
    "Quota information unavailable": "Kontingentinformationen nicht verfügbar",
    "Run Full Audit": "Führen Sie eine vollständige Prüfung durch",
    "Refresh Status": "Status aktualisieren",
    "Save Quota": "Kontingent sparen",
    "Select Surfshark Protocol": "Wählen Sie Surfshark-Protokoll",
    "Select": "Wählen",
    "Select a location or use fastest server":
        "Wählen Sie einen Standort oder verwenden Sie den schnellsten Server",
    "Select VPN Provider": "Wählen Sie VPN-Anbieter",
    "Save securely": "Sicher speichern",
    "Saved subscriptions": "Gespeicherte Abonnements",
    "Security session expired; please sign in again to use servers.":
        "Sicherheitssitzung abgelaufen; Bitte melden Sie sich erneut an, um Server zu nutzen.",
    "Recent": "Jüngste",
    "Selected country IP ranges bypass the VPN. Reconnect after changing rules. Domain-only rules need DNS-aware routing.":
        "Ausgewählte Länder-IP-Bereiche umgehen das VPN. Stellen Sie die Verbindung wieder her, nachdem Sie die Regeln geändert haben. Nur-Domänen-Regeln erfordern DNS-fähiges Routing.",
    "Selected apps use the physical network directly. Other apps continue using the VPN.":
        "Ausgewählte Apps nutzen direkt das physische Netzwerk. Andere Apps nutzen weiterhin das VPN.",
    "Route chosen applications or network subnets outside the VPN.":
        "Leiten Sie ausgewählte Anwendungen oder Netzwerksubnetze außerhalb des VPN weiter.",
    "Scan QR": "QR scannen",
    "Service Username / Key ID": "Dienstbenutzername/Schlüssel-ID",
    "Service Password / Private Key": "Dienstpasswort/privater Schlüssel",
    "Select applications to bypass the VPN tunnel and connect directly to the internet.":
        "Wählen Sie Anwendungen aus, um den VPN-Tunnel zu umgehen und eine direkte Verbindung zum Internet herzustellen.",
    "Settings": "Einstellungen",
    "Renew session tokens or switch account":
        "Sitzungstoken erneuern oder Konto wechseln",
    "Session Expired": "Sitzung abgelaufen",
    "Sign In": "Anmelden",
    "Session Duration": "Sitzungsdauer",
    "Service username and password required for handshakes":
        "Für Handshakes sind Dienstbenutzername und Passwort erforderlich",
    "Session Upload:": "Sitzungs-Upload:",
    "Service Credentials & Keys": "Service-Anmeldeinformationen und Schlüssel",
    "Show servers": "Server anzeigen",
    "Show All Servers": "Alle Server anzeigen",
    "Smart Service Suitability": "Smarte Servicetauglichkeit",
    "Set Quota": "Kontingent festlegen",
    "Sign In / Account": "Anmelden / Konto",
    "Sign in to activate Firefox tunnel and view data quota.":
        "Melden Sie sich an, um den Firefox-Tunnel zu aktivieren und das Datenkontingent anzuzeigen.",
    "Share secure encrypted tunnel with phones & tablets":
        "Teilen Sie einen sicheren, verschlüsselten Tunnel mit Telefonen und Tablets",
    "Speed Test History": "Geschichte des Geschwindigkeitstests",
    "Session Download:": "Sitzungs-Download:",
    "Test all": "Testen Sie alles",
    "Routes from Xray, WARP and MASQUE configurations. Connection is shown after traffic verification.":
        "Routen aus Xray-, WARP- und MASQUE-Konfigurationen. Die Verbindung wird nach der Verkehrsüberprüfung angezeigt.",
    "UNKNOWN": "UNBEKANNT",
    "Surfshark Service Account": "Surfshark-Dienstkonto",
    "Speed report copied to clipboard!":
        "Geschwindigkeitsbericht in die Zwischenablage kopiert!",
    "Unknown": "Unbekannt",
    "The previous VPN operation timed out. You can try again.":
        "Beim vorherigen VPN-Vorgang ist eine Zeitüberschreitung aufgetreten. Sie können es noch einmal versuchen.",
    "Split Tunneling": "Split-Tunneling",
    "To prevent Android from killing the VPN connection in background, disable battery optimization for this app.":
        "Um zu verhindern, dass Android die VPN-Verbindung im Hintergrund beendet, deaktivieren Sie die Akkuoptimierung für diese App.",
    "Start Speed Test": "Geschwindigkeitstest starten",
    "Tunnel-managed DNS; reconnect to apply":
        "Tunnelverwaltetes DNS; Stellen Sie die Verbindung erneut her, um sich zu bewerben",
    "Traffic Analytics": "Verkehrsanalyse",
    "Unlimited (Off)": "Unbegrenzt (Aus)",
    "Upload": "Hochladen",
    "Sign in": "anmelden",
    "Theme": "Thema",
    "Sign In to Harmoney Pro": "Melden Sie sich bei Harmoney Pro an",
    "Verify": "Verifizieren",
    "Sort by latency": "Nach Latenz sortieren",
    "VPN Hotspot Sharing (Windows ICS)": "VPN-Hotspot-Freigabe (Windows ICS)",
    "Uses Windows native per-process routing to send selected apps directly over your physical network adapter. Requires a compatible Windows build and the MilMit VPN service.":
        "Verwendet Windows-natives Pro-Prozess-Routing, um ausgewählte Apps direkt über Ihren physischen Netzwerkadapter zu senden. Erfordert einen kompatiblen Windows-Build und den MilMit VPN-Dienst.",
    "Temporary isolated guest Wi-Fi with automatic expiry and subnet isolation.":
        "Temporär isoliertes Gast-WLAN mit automatischem Ablauf und Subnetz-Isolierung.",
    "Windows per-app bypass routes selected apps directly through the physical adapter, independent of the active VPN protocol. Windows build support and the privileged MilMit service are required.":
        "Die Windows-Per-App-Umgehung leitet ausgewählte Apps direkt über den physischen Adapter weiter, unabhängig vom aktiven VPN-Protokoll. Windows-Build-Unterstützung und der privilegierte MilMit-Dienst sind erforderlich.",
    "VPN-to-hotspot ICS binding verified.":
        "VPN-zu-Hotspot-ICS-Bindung überprüft.",
    "WFP applies the rules independently of IKEv2, WireGuard, OpenVPN, and Xray. UDP relay is not complete yet, so apps requiring UDP will not be fully bypassed.":
        "WFP wendet die Regeln unabhängig von IKEv2, WireGuard, OpenVPN und Xray an. Das UDP-Relay ist noch nicht abgeschlossen, daher werden Apps, die UDP erfordern, nicht vollständig umgangen.",
    "System Apps": "System-Apps",
    "User Apps": "Benutzer-Apps",
    "VPN service credentials saved securely.":
        "Anmeldeinformationen für den VPN-Dienst sicher gespeichert.",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Windows IKEv2 route injection remains IPv4-only. Reconnect after changing rules.":
        "Xray leitet ausgewählte IPv4/IPv6-Bereiche und die gebündelte iranische Domainliste direkt weiter. Die Windows IKEv2-Routeninjektion bleibt weiterhin nur IPv4. Stellen Sie die Verbindung wieder her, nachdem Sie die Regeln geändert haben.",
    "You will receive visual alerts when reaching this limit.":
        "Bei Erreichen dieses Limits erhalten Sie visuelle Warnungen.",
    "Unlimited quota": "Unbegrenztes Kontingent",
    "Update Country Rules": "Länderregeln aktualisieren",
    "Scan subscription QR": "Scannen Sie den Abonnement-QR",
    "No imported profiles found.\nImport a ZIP archive from Surfshark Manual Setup.":
        "Keine Profile importiert.\nImportiere ein ZIP-Archiv aus der manuellen Surfshark-Einrichtung.",
    "Download Harmoney Pro": "Harmoney Pro herunterladen",
    "More protocols and connection options":
        "\u004d\u0065\u0068\u0072\u0020\u0050\u0072\u006f\u0074\u006f\u006b\u006f\u006c\u006c\u0065\u0020\u0075\u006e\u0064\u0020\u0056\u0065\u0072\u0062\u0069\u006e\u0064\u0075\u006e\u0067\u0073\u006f\u0070\u0074\u0069\u006f\u006e\u0065\u006e",
    "The Harmoney Pro download link is not available yet.":
        "\u0044\u0065\u0072\u0020\u0044\u006f\u0077\u006e\u006c\u006f\u0061\u0064\u002d\u004c\u0069\u006e\u006b\u0020\u0066\u00fc\u0072\u0020\u0048\u0061\u0072\u006d\u006f\u006e\u0065\u0079\u0020\u0050\u0072\u006f\u0020\u0069\u0073\u0074\u0020\u006e\u006f\u0063\u0068\u0020\u006e\u0069\u0063\u0068\u0074\u0020\u0076\u0065\u0072\u0066\u00fc\u0067\u0062\u0061\u0072\u002e",
    "Select connection service": "Verbindungsdienst auswählen",
    "Connection service": "Verbindungsdienst",
    "Personal subscriptions": "Persönliche Abonnements",
    "Smart routing and personal subscriptions":
        "Intelligentes Routing und persönliche Abonnements",
    "Lightweight Firefox VPN tunnel": "Leichter Firefox-VPN-Tunnel",
    "Rules apply to the active VPN route. UDP relay is not complete yet; apps requiring UDP may not be fully bypassed.":
        "Regeln gelten für die aktive VPN-Route. Die UDP-Weiterleitung ist noch nicht vollständig; Apps, die UDP benötigen, werden möglicherweise nicht vollständig am VPN vorbeigeleitet.",
    "Hotspot sharing preference saved.":
        "Hotspot-Freigabeeinstellung gespeichert.",
    "Save preference": "Einstellung speichern",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Reconnect after changing rules.":
        "Xray leitet ausgewählte IPv4/IPv6-Bereiche und die enthaltene iranische Domainliste direkt weiter. Nach Regeländerungen erneut verbinden.",
    "Auditing…": "Prüfung läuft…",
    "Checking account…": "Konto wird überprüft…",
    "Checking secure credential vault…":
        "Sicherer Anmeldedatenspeicher wird geprüft…",
    "Checking…": "Wird überprüft…",
    "Disconnect is still being processed…":
        "Die Trennung wird noch verarbeitet…",
    "Disconnect requested…": "Trennung angefordert…",
    "Disconnecting…": "Verbindung wird getrennt…",
    "Importing…": "Wird importiert…",
    "Signing in…": "Anmeldung läuft…",
    "Starting connection…": "Verbindung wird hergestellt…",
    "Updating…": "Wird aktualisiert…",
    "Working…": "Wird verarbeitet…",
    "Establishing secure tunnel…": "Sicherer Tunnel wird aufgebaut…",
  },
  "it": {
    "0 GB (Off)": "0 GB (Disattivato)",
    "100 GB": "100 GB",
    "200 GB": "200 GB",
    "50 GB": "50 GB",
    "A calmer connection. A brighter world.":
        "Una connessione più tranquilla. Un mondo più luminoso.",
    "Add": "Aggiungi",
    "Add CIDR rule": "Aggiungi regola CIDR",
    "Add Policy": "Aggiungi policy",
    "Add Routing Policy Rule": "Aggiungi regola criteri di routing",
    "Add split-tunnel CIDR": "Aggiungi tunnel diviso CIDR",
    "Advanced Policy Rules": "Regole policy avanzate",
    "Advanced Routing & Protection": "Routing e protezione avanzati",
    "Allow IPv6": "Consenti IPv6",
    "Allow Iran traffic during Lockdown":
        "Consenti il ​​traffico iraniano durante il blocco",
    "Always-on VPN": "Sempre attivo VPN",
    "Always-on and Lockdown cover Firefox, WireGuard, IKEv2 and OpenVPN. DNS and IPv6 policies are enforced by each active tunnel profile.":
        "Copertura sempre attiva e con blocco Firefox, WireGuard, IKEv2 e OpenVPN. Le politiche DNS e IPv6 vengono applicate da ciascun profilo tunnel attivo.",
    "Always-on and Lockdown cover supported VPN connections. DNS and IPv6 policies are enforced by the active tunnel.":
        "La copertura sempre attiva e di blocco supportava le connessioni VPN. Le policy DNS e IPv6 vengono applicate dal tunnel attivo.",
    "Android Protection": "Android Protezione",
    "Android app bypass applies after reconnecting the VPN.":
        "Il bypass dell'app Android si applica dopo aver ricollegato VPN.",
    "Auto (Fallback)": "Automatico (Fallback)",
    "Block Destination": "Blocca destinazione",
    "Block IPv6 (Leak Protection)": "Blocca IPv6 (Protezione dalle perdite)",
    "Block Internet Access": "Blocca accesso Internet",
    "Block QUIC (UDP 443)": "Blocco QUIC (UDP 443)",
    "Block all internet leaks when the VPN drops unexpectedly":
        "Blocca tutte le perdite di Internet quando la VPN si interrompe inaspettatamente",
    "Block connections without VPN": "Blocca le connessioni senza VPN",
    "Block internet": "Blocca Internet",
    "Bypass VPN": "Bypassare VPN",
    "Cancel": "Annulla",
    "Client Isolation": "Isolamento client",
    "Close": "Chiudi",
    "Connection": "Connessione",
    "Console output copied to clipboard.":
        "Uscita console copiata negli appunti.",
    "Country destinations bypass the VPN directly through the ISP; other traffic remains inside the VPN.":
        "Le destinazioni nazionali bypassano VPN direttamente tramite l'ISP; altro traffico rimane all'interno di VPN.",
    "Create": "Crea",
    "Create new list": "Crea nuovo elenco",
    "Custom Bypass Rules": "Regole di bypass personalizzate",
    "Custom Location Lists": "Elenchi posizioni personalizzate",
    "Default Hotspot Route": "Instradamento hotspot predefinito",
    "Deselect all": "Deseleziona tutto",
    "Diagnostic Terminal Output": "Uscita terminale diagnostico",
    "Diagnostics & Health": "Diagnostica e salute",
    "Direct (Bypass VPN)": "Diretto (Bypass VPN)",
    "Domains, IPv4 addresses or CIDRs that always bypass the VPN":
        "Domini, indirizzi IPv4 o CIDRs che bypassano sempre",
    "Done": "Fatto",
    "Emergency Stop": "Arresto di emergenza",
    "Emergency Stop executed: Processes terminated and physical network unjammed.":
        "Arresto di emergenza eseguito: processi terminati e rete fisica sbloccata.",
    "Endpoint Candidates": "Candidati endpoint",
    "Enforce Quota": "Applica quota",
    "Error": "Errore",
    "Explain": "Spiegare la policy",
    "Explain why a destination routes via VPN or Direct ISP, with rule priority matching.":
        "Spiegare perché una destinazione instrada tramite VPN o ISP diretto, con la corrispondenza della priorità delle regole.",
    "Export the selected server list as JSON and TXT files.":
        "Esporta l'elenco dei server selezionati come file JSON e TXT.",
    "FASTEST ⚡": "PIÙ VELOCE ⚡",
    "Firefox Account": "QZXVIEW0QZX Account",
    "Firefox VPN": "Firefox VPN",
    "Firefox data allowance": "Firefox quantità di dati",
    "Force HTTPS traffic through TCP/TLS for consistent filtering.":
        "Forza il traffico HTTPS attraverso TCP/TLS per un filtraggio coerente.",
    "Force Hotspot VPN DNS": "Forza hotspot VPN DNS",
    "Force VPN": "Forza VPN",
    "Force VPN Encrypted": "Forza VPN Crittografato",
    "Guest Hotspot": "Hotspot guest",
    "HTTP/2 CONNECT": "HTTP/2 CONNETTI",
    "Harmoney": "Harmoney",
    "Harmoney Pro": "Harmoney Pro",
    "Harmoney Smart": "Harmoney Smart",
    "Host and Hotspot clients": "Client host e hotspot",
    "Host machine only": "Solo macchina host",
    "Hotspot & Devices": "Hotspot e dispositivi",
    "Hotspot Doctor & Diagnostics": "Hotspot Dottore e diagnostica",
    "Hotspot IPv6 Policy": "Politica dell'hotspot IPv6",
    "Hotspot clients only": "Solo client hotspot",
    "IKEv2": "IKEv2",
    "IPv6 leak protection": "IPv6 protezione dalle perdite",
    "Import ZIP Archive": "Importa archivio ZIP",
    "Inspect XFRM interface, table 220, IP rules, and verify live connectivity safely.":
        "Ispeziona l'interfaccia XFRM, la tabella 220, le regole IP e verifica la connettività live in modo sicuro.",
    "Keep domestic services and banking reachable when the VPN drops":
        "Mantieni i servizi nazionali e bancari raggiungibili quando",
    "Launch direct": "Avvia direttamente",
    "Live Connection Logs (Stream)": "Registri di connessione live (flusso)",
    "Live Logs": "Registri in tempo reale",
    "Live Verification": "Verifica in tempo reale",
    "Live connection events from all providers and protocols":
        "Eventi di connessione in tempo reale da tutti i provider e protocolli",
    "Lockdown mode (Kill Switch)": "Modalità di blocco (Kill Switch)",
    "Logs copied to clipboard (secrets redacted).":
        "Registri copiati negli appunti (segreti oscurati).",
    "Manage VPN Profiles": "Gestisci profili VPN",
    "Manage connected devices, bandwidth quotas, guest Wi-Fi, and routing policies.":
        "Gestisci i dispositivi connessi, le quote di larghezza di banda, il guest Wi-Fi e le policy di routing.",
    "Mbps": "Mbps",
    "Network Subnets (CIDRs)": "Sottoreti di rete (CIDRs)",
    "Network unjammed: Kill switch, routes, and XFRM interfaces restored to normal.":
        "Rete sbloccata: Kill switch, percorsi e interfacce XFRM ripristinati alla normalità.",
    "New Custom List": "Nuovo elenco personalizzato",
    "No CIDR rules yet.": "Nessuna regola CIDR ancora.",
    "No advanced policy rules configured.":
        "Nessuna regola dei criteri avanzati configurata.",
    "No custom bypass rules.": "Nessuna regola di bypass personalizzata.",
    "No custom lists created yet.":
        "Nessun elenco personalizzato ancora creato.",
    "No devices currently connected to hotspot.":
        "Nessun dispositivo attualmente connesso all'hotspot.",
    "No endpoint candidates configured.":
        "Nessun candidato endpoint configurato.",
    "No matching events yet. Start a VPN connection to collect logs.":
        "Nessun evento corrispondente ancora. Avvia una connessione VPN per raccogliere i log.",
    "Notify only": "Notifica solo",
    "Offline cache ready": "Cache offline pronta",
    "OpenVPN": "OpenVPN",
    "Operation failed": "Operazione non riuscita",
    "Overall Tunnel Health": "Stato generale del tunnel",
    "Pause Device Connection": "Metti in pausa la connessione del dispositivo",
    "Ping": "Ping",
    "Prevent connected hotspot clients from communicating directly.":
        "Impedisce ai client hotspot connessi di comunicare direttamente.",
    "Protected Hotspot Options": "Opzioni hotspot protetto",
    "Protection HUD": "HUD di protezione",
    "Protection settings are applied by Android VpnService and take effect after reconnecting.":
        "Le impostazioni di protezione vengono applicate da Android VpnService e diventano effettive dopo la riconnessione.",
    "Protocol": "Protocollo",
    "Protocol coverage": "Copertura del protocollo",
    "Provider": "Fornitore",
    "Queued…": "In coda…",
    "Quota Exceeded Action:": "Azione quota superata:",
    "Reconnect the VPN to apply Android CIDR routes.":
        "Ricollegare VPN per applicare i percorsi Android CIDR.",
    "Redirect all device DNS queries to Surfshark DNS.":
        "Reindirizza tutte le query del dispositivo DNS a Surfshark DNS.",
    "Redirect device DNS queries through the selected VPN.":
        "Reindirizza le query del dispositivo DNS tramite il VPN selezionato.",
    "Refresh": "Aggiorna",
    "Repair Hotspot Routing": "Ripara il routing dell'hotspot",
    "Route Explain": "Spiegazione del percorso",
    "Route IPv6 through supported tunnels; reconnect to apply":
        "Instrada IPv6 attraverso i tunnel supportati; riconnettersi per applicare",
    "Route Table & XFRM Verification": "Tabella di routing e verifica XFRM",
    "Route specific destinations through Direct, Force VPN, or Block.":
        "Instradare destinazioni specifiche tramite Diretto, Forza VPN o Blocca.",
    "Route test": "Test del percorso",
    "Routing Policy:": "Criterio di instradamento:",
    "Run Hotspot Doctor": "Esegui Hotspot Doctor",
    "Safe Apply & LKG": "Applicazione sicura e LKG",
    "Save": "Salva",
    "Secure VPN DNS": "Sicuro VPN DNS",
    "Select all": "Seleziona tutto",
    "Start Guest": "Avvia ospite",
    "Start Guest Hotspot": "Avvia hotspot ospite",
    "Start Guest Wi-Fi": "Avvia Guest Wi-Fi",
    "Stop Guest": "Interrompi guest",
    "Support bundle exported and copied to clipboard.":
        "Pacchetto di supporto esportato e copiato negli appunti.",
    "Surfshark": "Surfshark",
    "Talker Logs": "Registri degli oratori",
    "Test": "Test",
    "Throttle to 128kbit/s": "Limita a 128 kbit/s",
    "Tunnel path audits, leak tests, latency probes, and runtime telemetry":
        "Controlli del percorso del tunnel, test di tenuta, sondaggi di latenza e telemetria di runtime",
    "VPN Debug Logs": "VPN Registri di debug",
    "WireGuard": "WireGuard",
    "by MilMit": "di MilMit",
    "اسکن خودکار این دستگاه": "Scansione automatica di questo dispositivo",
    "اعمال در تنظیمات": "Applica alle impostazioni",
    "انصراف": "Annulla",
    "این شناسه به عنوان اثرانگشت سخت‌افزاری (Hardware Device ID) برای احراز هویت دستگاه در سرور استفاده می‌شود. می‌توانید مقادیر را تغییر دهید یا خودکار دریافت کنید:":
        "Questo ID viene utilizzato come impronta digitale hardware (Hardware Device ID) per autenticare il dispositivo sul server. È possibile modificare i valori o ottenere automaticamente:",
    "باز کردن پوشه": "Apri cartella",
    "برای بارگذاری سرورها، اشتراک خود را وارد کنید":
        "Accedi per caricare i server",
    "بستن": "Chiudi",
    "تست اتصال": "Test di connessione",
    "تنظیمات اتصال سرویس": "Impostazioni di connessione al servizio",
    "تنظیمات سرور": "Impostazioni server",
    "تولید شناسه سخت‌افزاری دستگاه": "Genera ID hardware dispositivo",
    "جهت اتصال آسان‌تر از خط فرمان (رمز عبور متن آشکار ذخیره می‌شود)":
        "per una connessione più semplice dalla riga di comando (la password viene memorizzata in testo non crittografato)",
    "خروجی‌گرفتن از پروفایل‌های اتصال": "Output dei profili di connessione",
    "دریافت خودکار از سخت‌افزار سیستم":
        "Ottieni automaticamente dall'hardware del sistema",
    "ذخیره تنظیمات": "Salva impostazioni",
    "ذخیره نام کاربری و رمز عبور در فایل متنی":
        "Salva nome utente e password nel file di testo",
    "رمز عبور (Password)": "Password",
    "شروع استخراج": "Avvia estrazione",
    "شناسه سخت‌افزاری به مقدار پیش‌فرض سرور بازنشانی شد.":
        "Identificatore hardware reimpostato sul valore predefinito del server.",
    "شناسه سخت‌افزاری دستگاه با موفقیت تنظیم شد.":
        "L'ID hardware del dispositivo è stato impostato correttamente.",
    "شناسه نهایی تولیدشده (SHA-256):": "ID finale generato (SHA-256):",
    "شناسه پیش‌فرض سرور": "ID server predefinito",
    "فایل‌ها با موفقیت استخراج شدند.":
        "I file sono stati estratti correttamente.",
    "محل ذخیره پیش‌فرض:": "Posizione di archiviazione predefinita:",
    "نام کاربری (Username)": "Nome utente",
    "ورود با موفقیت انجام شد و فهرست سرورها به‌روزرسانی گردید.":
        "L'accesso è riuscito e l'elenco dei server è stato aggiornato.",
    "ورود به حساب Harmoney Pro": "Accedi Harmoney Pro",
    "ورود مقادیر و ساخت دستی": "Inserisci i valori e crea manualmente",
    "ورود و بارگذاری سرورها": "Accesso e caricamento server",
    "پیش‌فرض سرور": "Server predefinito",
    "پیکربندی سرور (پیش‌فرض سورس کد - فقط در حالت Debug)":
        "Configurazione del server (codice sorgente predefinito - solo in modalità Debug)",
    "ACTIVE": "ATTIVO",
    "API Settings": "Impostazioni dell'API",
    "Active": "Attivo",
    "A VPN operation is already running. Please wait for its status to update.":
        "Un'operazione VPN è già in esecuzione. Attendi l'aggiornamento del suo stato.",
    "All": "Tutto",
    "Active Surfshark Protocol": "Protocollo Surfshark attivo",
    "App language": "Lingua dell'app",
    "Add at least one application to turn this on.":
        "Aggiungi almeno un'applicazione per attivarla.",
    "Add an application before enabling app bypass.":
        "Aggiungi un'applicazione prima di abilitare il bypass dell'app.",
    "-- ms": "-- SM",
    "Applications": "Applicazioni",
    "Add application (.exe)": "Aggiungi applicazione (.exe)",
    "Add an HTTP or HTTPS subscription URL. Links are stored securely on this device.":
        "Aggiungi un URL di abbonamento HTTP o HTTPS. I collegamenti vengono archiviati in modo sicuro su questo dispositivo.",
    "Bypass": "Bypassare",
    "CONNECT": "COLLEGARE",
    "CONNECTED": "COLLEGATO",
    "Battery Optimization Active (Doze Mode)":
        "Ottimizzazione della batteria attiva (modalità Doze)",
    "Android supports IPv4 and IPv6 CIDR bypass. Reconnect the VPN after changing these routes; app bypass also takes effect after reconnect.":
        "Android supporta il bypass CIDR IPv4 e IPv6. Riconnettere la VPN dopo aver modificato questi percorsi; Il bypass dell'app ha effetto anche dopo la riconnessione.",
    "Change": "Modifica",
    "Check status": "Controlla lo stato",
    "Clear": "Chiaro",
    "Connected": "Collegato",
    "CONNECTING": "CONNESSIONE",
    "Cancel Test": "Annulla prova",
    "Connecting": "Connessione",
    "Copied!": "Copiato!",
    "Add subscription": "Aggiungi abbonamento",
    "Choose your desired VPN network provider":
        "Scegli il provider di rete VPN desiderato",
    "Cisco": "Cisco",
    "Country & App Bypass": "Esclusione paese e app",
    "Clear stored credentials from this device":
        "Cancella le credenziali archiviate da questo dispositivo",
    "Configures Windows ICS for the VPN adapter when Mobile Hotspot is active. The app verifies the ICS binding; client Internet traffic still needs an end-to-end check.":
        "Configura il servizio ICS di Windows per l'adattatore VPN quando l'hotspot mobile è attivo. L'app verifica l'associazione ICS; Il traffico Internet del client necessita ancora di un controllo end-to-end.",
    "Choose QR image": "Scegli l'immagine QR",
    "Disabled": "Disabilitato",
    "Configure": "Configura",
    "Country bypass DAT rules updated. Reconnect VPN to apply.":
        "Aggiornate le regole DAT per l'esclusione del Paese. Riconnetti la VPN per applicare.",
    "Download": "Scaricamento",
    "Android Lockdown is active": "Il blocco Android è attivo",
    "Bypassing": "Bypassare",
    "Disconnect": "Disconnetti",
    "Disconnect is taking longer than expected. You can try again.":
        "La disconnessione sta richiedendo più tempo del previsto. Puoi riprovare.",
    "Disabled: all traffic routes securely through encrypted VPN tunnel.":
        "Disabilitato: tutto il traffico viene instradato in modo sicuro attraverso un tunnel VPN crittografato.",
    "Enable Split Tunneling": "Abilita tunneling diviso",
    "Copy Report": "Copia rapporto",
    "Enable app bypass": "Abilita il bypass dell'app",
    "DISCONNECTED": "DISCONNESSO",
    "Enable Hotspot Sharing (ICS)": "Abilita condivisione hotspot (ICS)",
    "Enable Lockdown in Android VPN settings":
        "Abilita il blocco nelle impostazioni VPN Android",
    "Enable per-app bypass": "Abilita il bypass per app",
    "Enabled for Harmoney": "Abilitato per Harmony",
    "Country IPv4 ranges bypass the VPN after reconnecting. App bypass uses the Windows physical interface and requires the MilMit service.":
        "Gli intervalli IPv4 nazionali ignorano la VPN dopo la riconnessione. Il bypass dell'app utilizza l'interfaccia fisica di Windows e richiede il servizio MilMit.",
    "Export Servers": "Esporta server",
    "Favorites": "Preferiti",
    "DISCONNECTING": "DISCONNESSIONE",
    "FireTunnel Token / Password": "Token/password FireTunnel",
    "Firefox Account credentials are sent directly to Mozilla by the native Android engine. Encrypted tokens never enter Flutter storage.":
        "Le credenziali dell'account Firefox vengono inviate direttamente a Mozilla dal motore Android nativo. I token crittografati non entrano mai nello spazio di archiviazione Flutter.",
    "Firefox Account credentials are sent directly to Mozilla by the local Windows helper. The password is not saved; only the account tokens needed for future connections are stored locally.":
        "Le credenziali dell'account Firefox vengono inviate direttamente a Mozilla dall'helper locale di Windows. La password non viene salvata; solo i token dell'account necessari per le connessioni future vengono archiviati localmente.",
    "Credentials encrypted in privileged platform keystore":
        "Credenziali crittografate nell'archivio chiavi della piattaforma privilegiata",
    "Firefox VPN Account": "Account VPN per Firefox",
    "History": "Storia",
    "Disable Optimization": "Disabilita ottimizzazione",
    "Harmoney Anti-Censorship Core": "Nucleo anti-censura Harmoney",
    "Harmoney Pro Connection Error": "Errore di connessione Harmoney Pro",
    "Firefox VPN protocol": "Protocollo VPN per Firefox",
    "Firefox VPN Token & Auth": "Token e autenticazione VPN per Firefox",
    "Import ZIP": "Importa CAP",
    "Hotspot Inactive": "Hotspot inattivo",
    "Last Speed Benchmark:": "Ultimo benchmark di velocità:",
    "Hardware-backed encryption: Credentials are encrypted in platform vault.":
        "Crittografia supportata da hardware: le credenziali vengono crittografate nel Platform Vault.",
    "Hardware Profile: Dell Latitude 7210 & Intel / Cellular LTE":
        "Profilo hardware: Dell Latitude 7210 e Intel/Cellulare LTE",
    "FireTunnel authenticates with Firefox Accounts. Credentials are sent only to the root-isolated native helper; tokens never enter Flutter storage.":
        "FireTunnel si autentica con gli account Firefox. Le credenziali vengono inviate solo all'helper nativo isolato root; i token non entrano mai nello spazio di archiviazione Flutter.",
    "KEY REQUIRED": "CHIAVE RICHIESTA",
    "Harmoney Pro Service": "Servizio Harmoney Pro",
    "Firefox Account Email / User": "E-mail/utente dell'account Firefox",
    "Harmoney Pro Sign In Required": "È richiesto l'accesso ad Harmoney Pro",
    "Logout": "Esci",
    "Live Real-Time Speed": "Velocità in tempo reale dal vivo",
    "Live Active": "Vivi attivo",
    "Inactive": "Inattivo",
    "Manage Account": "Gestisci conto",
    "Hotspot Active": "Hotspot attivo",
    "Load apps": "Carica app",
    "Manage": "Maneggio",
    "No active hotspot interface detected on system.":
        "Nessuna interfaccia hotspot attiva rilevata sul sistema.",
    "Manage connection, security, and appearance":
        "Gestisci connessione, sicurezza e aspetto",
    "Load installed applications to configure per-app bypass.":
        "Carica le applicazioni installate per configurare il bypass per app.",
    "Live bandwidth, data accounting & quota":
        "Larghezza di banda in tempo reale, contabilità dei dati e quota",
    "No applications selected.": "Nessuna applicazione selezionata.",
    "Live Speed & Traffic": "Velocità e traffico in tempo reale",
    "Log in to account": "Accedi all'account",
    "No servers found.": "Nessun server trovato.",
    "Monthly Allowance": "Indennità mensile",
    "Monthly Data Quota": "Quota dati mensile",
    "Locations & Routes": "Posizioni e percorsi",
    "No favorite servers.": "Nessun server preferito.",
    "Encrypted tunnel verified with zero packet leakage.":
        "Tunnel crittografato verificato senza perdita di pacchetti.",
    "No speed tests recorded yet.":
        "Nessun test di velocità ancora registrato.",
    "No subscriptions added yet.": "Nessun abbonamento ancora aggiunto.",
    "Online": "In linea",
    "Open Mobile Hotspot": "Apri Hotspot mobile",
    "Per-app VPN bypass": "Bypass VPN per app",
    "Per-app bypass": "Bypass per app",
    "Query latest session and traffic quota":
        "Interroga l'ultima sessione e la quota di traffico",
    "Manage Firefox VPN Account": "Gestisci l'account VPN di Firefox",
    "Not supported on this platform.": "Non supportato su questa piattaforma.",
    "Logged In": "Effettuato l'accesso",
    "On Android and Linux the selected subscription is used, but the VPN core may choose a different node from it.":
        "Su Android e Linux viene utilizzato l'abbonamento selezionato, ma il core VPN può scegliere un nodo diverso da esso.",
    "No Limit Set": "Nessun limite impostato",
    "Recent": "Recente",
    "Ping All": "Segnala tutto",
    "Refresh status & quota": "Aggiorna stato e quota",
    "Quick connect": "Connessione rapida",
    "Login Required": "Accesso richiesto",
    "Recommended Fast Routes": "Percorsi veloci consigliati",
    "Re-login to account": "Accedi nuovamente all'account",
    "Quota information unavailable": "Informazioni sulla quota non disponibili",
    "Private connection service": "Servizio di collegamento privato",
    "No imported profiles found.\\nImport a ZIP archive from Surfshark Manual Setup.":
        "Nessun profilo importato trovato.\\nImporta un archivio ZIP dalla Configurazione manuale di Surfshark.",
    "Remaining traffic:": "Traffico rimanente:",
    "Re-login": "Effettuare nuovamente l'accesso",
    "Restore": "Ripristinare",
    "Retry": "Riprova",
    "Ready to perform live routing and security audits.":
        "Pronto per eseguire routing in tempo reale e controlli di sicurezza.",
    "Per-app bypass is not supported on this platform.":
        "Il bypass per app non è supportato su questa piattaforma.",
    "Run Full Audit": "Esegui il controllo completo",
    "Select": "Selezionare",
    "Scan QR": "Scansione QR",
    "Open": "Aprire",
    "Scan subscription QR": "Scansiona il QR dell'abbonamento",
    "Select Surfshark Protocol": "Seleziona Protocollo Surfshark",
    "Routes from Xray, WARP and MASQUE configurations. Connection is shown after traffic verification.":
        "Percorsi dalle configurazioni Xray, WARP e MASQUE. La connessione viene mostrata dopo la verifica del traffico.",
    "Route chosen applications or network subnets outside the VPN.":
        "Indirizza le applicazioni o le sottoreti di rete selezionate all'esterno della VPN.",
    "Service Credentials & Keys": "Credenziali e chiavi del servizio",
    "Select a location or use fastest server":
        "Seleziona una posizione o utilizza il server più veloce",
    "Select VPN Provider": "Seleziona Fornitore VPN",
    "Refresh Status": "Aggiorna stato",
    "Save securely": "Risparmia in sicurezza",
    "Session Expired": "Sessione scaduta",
    "Service Password / Private Key": "Password di servizio/chiave privata",
    "Selected country IP ranges bypass the VPN. Reconnect after changing rules. Domain-only rules need DNS-aware routing.":
        "Gli intervalli IP dei paesi selezionati ignorano la VPN. Riconnettiti dopo aver modificato le regole. Le regole solo di dominio richiedono il routing compatibile con DNS.",
    "Save Quota": "Salva quota",
    "Settings": "Impostazioni",
    "Service username and password required for handshakes":
        "Nome utente e password del servizio richiesti per gli handshake",
    "Repair ICS": "Riparare l'ICS",
    "Selected apps use the physical network directly. Other apps continue using the VPN.":
        "Le app selezionate utilizzano direttamente la rete fisica. Altre app continuano a utilizzare la VPN.",
    "Service Username / Key ID": "Nome utente/ID chiave del servizio",
    "Sign In": "Registrazione",
    "Session Duration": "Durata della sessione",
    "Session Upload:": "Caricamento della sessione:",
    "Security session expired; please sign in again to use servers.":
        "Sessione di sicurezza scaduta; accedi nuovamente per utilizzare i server.",
    "Renew session tokens or switch account":
        "Rinnova i token di sessione o cambia account",
    "Show All Servers": "Mostra tutti i server",
    "Saved subscriptions": "Abbonamenti salvati",
    "Split Tunneling": "Tunneling diviso",
    "Share secure encrypted tunnel with phones & tablets":
        "Condividi tunnel crittografato sicuro con telefoni e tablet",
    "Smart Service Suitability": "Idoneità al servizio intelligente",
    "Test all": "Prova tutto",
    "Sign In / Account": "Accedi/Account",
    "Show servers": "Mostra server",
    "Set Quota": "Imposta quota",
    "Theme": "Tema",
    "Select applications to bypass the VPN tunnel and connect directly to the internet.":
        "Seleziona le applicazioni per bypassare il tunnel VPN e connetterti direttamente a Internet.",
    "Sign in": "Registrazione",
    "Surfshark Service Account": "Account del servizio Surfshark",
    "Sign In to Harmoney Pro": "Accedi ad Harmoney Pro",
    "Speed Test History": "Cronologia dei test di velocità",
    "System Apps": "App di sistema",
    "Sort by latency": "Ordina per latenza",
    "Start Speed Test": "Avvia il test di velocità",
    "Temporary isolated guest Wi-Fi with automatic expiry and subnet isolation.":
        "Wi-Fi ospite temporaneo isolato con scadenza automatica e isolamento della sottorete.",
    "Sign in to activate Firefox tunnel and view data quota.":
        "Accedi per attivare il tunnel di Firefox e visualizzare la quota dati.",
    "To prevent Android from killing the VPN connection in background, disable battery optimization for this app.":
        "Per impedire ad Android di interrompere la connessione VPN in background, disabilita l'ottimizzazione della batteria per questa app.",
    "UNKNOWN": "SCONOSCIUTO",
    "The previous VPN operation timed out. You can try again.":
        "L'operazione VPN precedente è scaduta. Puoi riprovare.",
    "Unknown": "Sconosciuto",
    "Uses Windows native per-process routing to send selected apps directly over your physical network adapter. Requires a compatible Windows build and the MilMit VPN service.":
        "Utilizza il routing per processo nativo di Windows per inviare le app selezionate direttamente tramite la scheda di rete fisica. Richiede una build Windows compatibile e il servizio VPN MilMit.",
    "VPN-to-hotspot ICS binding verified.":
        "Associazione ICS da VPN a hotspot verificata.",
    "Unlimited (Off)": "Illimitato (disattivato)",
    "Unlimited quota": "Quota illimitata",
    "Update Country Rules": "Aggiorna le regole del paese",
    "Verify": "Verificare",
    "Upload": "Caricamento",
    "VPN service credentials saved securely.":
        "Credenziali del servizio VPN salvate in modo sicuro.",
    "User Apps": "App utente",
    "Tunnel-managed DNS; reconnect to apply":
        "DNS gestito da tunnel; riconnettersi per applicare",
    "Windows per-app bypass routes selected apps directly through the physical adapter, independent of the active VPN protocol. Windows build support and the privileged MilMit service are required.":
        "Il bypass per app di Windows instrada le app selezionate direttamente attraverso l'adattatore fisico, indipendentemente dal protocollo VPN attivo. Sono richiesti il ​​supporto per la build di Windows e il servizio privilegiato MilMit.",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Windows IKEv2 route injection remains IPv4-only. Reconnect after changing rules.":
        "I percorsi Xray hanno selezionato direttamente gli intervalli IPv4/IPv6 e l'elenco dei domini iraniani in bundle. L'inserimento del percorso IKEv2 di Windows rimane solo IPv4. Riconnettiti dopo aver modificato le regole.",
    "VPN Hotspot Sharing (Windows ICS)":
        "Condivisione hotspot VPN (ICS Windows)",
    "WFP applies the rules independently of IKEv2, WireGuard, OpenVPN, and Xray. UDP relay is not complete yet, so apps requiring UDP will not be fully bypassed.":
        "Il WFP applica le regole indipendentemente da IKEv2, WireGuard, OpenVPN e Xray. L'inoltro UDP non è ancora completo, quindi le app che richiedono UDP non verranno completamente ignorate.",
    "Session Download:": "Download della sessione:",
    "Traffic Analytics": "Analisi del traffico",
    "You will receive visual alerts when reaching this limit.":
        "Riceverai avvisi visivi quando raggiungi questo limite.",
    "Speed report copied to clipboard!":
        "Rapporto sulla velocità copiato negli appunti!",
    "No imported profiles found.\nImport a ZIP archive from Surfshark Manual Setup.":
        "Nessun profilo importato.\nImporta un archivio ZIP dalla configurazione manuale di Surfshark.",
    "Download Harmoney Pro": "Scarica Harmoney Pro",
    "More protocols and connection options":
        "\u0050\u0069\u00f9\u0020\u0070\u0072\u006f\u0074\u006f\u0063\u006f\u006c\u006c\u0069\u0020\u0065\u0020\u006f\u0070\u007a\u0069\u006f\u006e\u0069\u0020\u0064\u0069\u0020\u0063\u006f\u006e\u006e\u0065\u0073\u0073\u0069\u006f\u006e\u0065",
    "The Harmoney Pro download link is not available yet.":
        "\u0049\u006c\u0020\u006c\u0069\u006e\u006b\u0020\u0070\u0065\u0072\u0020\u0073\u0063\u0061\u0072\u0069\u0063\u0061\u0072\u0065\u0020\u0048\u0061\u0072\u006d\u006f\u006e\u0065\u0079\u0020\u0050\u0072\u006f\u0020\u006e\u006f\u006e\u0020\u00e8\u0020\u0061\u006e\u0063\u006f\u0072\u0061\u0020\u0064\u0069\u0073\u0070\u006f\u006e\u0069\u0062\u0069\u006c\u0065\u002e",
    "Select connection service": "Seleziona il servizio di connessione",
    "Connection service": "Servizio di connessione",
    "Personal subscriptions": "Abbonamenti personali",
    "Smart routing and personal subscriptions":
        "Instradamento intelligente e abbonamenti personali",
    "Lightweight Firefox VPN tunnel": "Tunnel Firefox VPN leggero",
    "Rules apply to the active VPN route. UDP relay is not complete yet; apps requiring UDP may not be fully bypassed.":
        "Le regole si applicano alla route VPN attiva. Il relay UDP non è ancora completo; le app che richiedono UDP potrebbero non essere escluse completamente dalla VPN.",
    "Hotspot sharing preference saved.":
        "Preferenza di condivisione hotspot salvata.",
    "Save preference": "Salva preferenza",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Reconnect after changing rules.":
        "Xray instrada direttamente gli intervalli IPv4/IPv6 selezionati e l’elenco di domini iraniani incluso. Riconnettiti dopo aver modificato le regole.",
    "Auditing…": "Verifica in corso…",
    "Checking account…": "Verifica dell’account…",
    "Checking secure credential vault…":
        "Verifica del deposito sicuro delle credenziali…",
    "Checking…": "Verifica in corso…",
    "Disconnect is still being processed…":
        "La richiesta di disconnessione è ancora in elaborazione…",
    "Disconnect requested…": "Disconnessione richiesta…",
    "Disconnecting…": "Disconnessione…",
    "Importing…": "Importazione…",
    "Signing in…": "Accesso in corso…",
    "Starting connection…": "Avvio della connessione…",
    "Updating…": "Aggiornamento…",
    "Working…": "Elaborazione…",
    "Establishing secure tunnel…": "Creazione del tunnel sicuro…",
  },
  "ru": {
    "0 GB (Off)": "0 ГБ (Выкл.)",
    "100 GB": "100 ГБ",
    "200 GB": "200 ГБ",
    "50 GB": "50 ГБ",
    "A calmer connection. A brighter world.":
        "Более спокойная связь. Более яркий мир.",
    "Add": "Добавить",
    "Add CIDR rule": "Добавить правило CIDR",
    "Add Policy": "Добавить политику",
    "Add Routing Policy Rule": "Добавить правило политики маршрутизации",
    "Add split-tunnel CIDR": "Добавить разделенный туннель CIDR",
    "Advanced Policy Rules": "Правила расширенной политики",
    "Advanced Routing & Protection": "Расширенная маршрутизация и защита",
    "Allow IPv6": "Разрешить IPv6",
    "Allow Iran traffic during Lockdown":
        "Разрешить трафик Ирана во время блокировки",
    "Always-on VPN": "Всегда включен VPN",
    "Always-on and Lockdown cover Firefox, WireGuard, IKEv2 and OpenVPN. DNS and IPv6 policies are enforced by each active tunnel profile.":
        "Крышки постоянного включения и блокировки Firefox, WireGuard, IKEv2 и OpenVPN. Политики DNS и IPv6 применяются каждым активным профилем туннеля.",
    "Always-on and Lockdown cover supported VPN connections. DNS and IPv6 policies are enforced by the active tunnel.":
        "Крышка Always On и Lockdown поддерживает соединения VPN. Политики DNS и IPv6 применяются активным туннелем.",
    "Android Protection": "Android Защита",
    "Android app bypass applies after reconnecting the VPN.":
        "Обход приложения Android применяется после повторного подключения VPN.",
    "Auto (Fallback)": "Авто (резервный режим)",
    "Block Destination": "Назначение блока",
    "Block IPv6 (Leak Protection)": "Блокировать IPv6 (Защита от утечек)",
    "Block Internet Access": "Блокировать доступ в Интернет",
    "Block QUIC (UDP 443)": "Блок QUIC (UDP 443)",
    "Block all internet leaks when the VPN drops unexpectedly":
        "Блокировка всех утечек Интернета при неожиданном отключении VPN",
    "Block connections without VPN": "Блокировать соединения без VPN",
    "Block internet": "Заблокировать Интернет",
    "Bypass VPN": "Обход VPN",
    "Cancel": "Отменить",
    "Client Isolation": "Изоляция клиентов",
    "Close": "Закрыть",
    "Connection": "Соединение",
    "Console output copied to clipboard.":
        "Вывод консоли скопирован в буфер обмена.",
    "Country destinations bypass the VPN directly through the ISP; other traffic remains inside the VPN.":
        "Страны назначения обходят VPN напрямую через интернет-провайдера; другой трафик остается внутри VPN.",
    "Create": "Создать",
    "Create new list": "Создать новый список",
    "Custom Bypass Rules": "Пользовательские правила обхода",
    "Custom Location Lists": "Пользовательские списки местоположений",
    "Default Hotspot Route": "Маршрут к точке доступа по умолчанию",
    "Deselect all": "Отменить выбор всех",
    "Diagnostic Terminal Output": "Вывод диагностического терминала",
    "Diagnostics & Health": "Диагностика и работоспособность",
    "Direct (Bypass VPN)": "Прямой (обход VPN)",
    "Domains, IPv4 addresses or CIDRs that always bypass the VPN":
        "Домены, адреса IPv4 или CIDRs, которые всегда обходят VPN",
    "Done": "Готово",
    "Emergency Stop": "Аварийный останов",
    "Emergency Stop executed: Processes terminated and physical network unjammed.":
        "Выполнена аварийная остановка: процессы завершены, а физическая сеть отключена.",
    "Endpoint Candidates": "Кандидаты на конечные точки",
    "Enforce Quota": "Применить квоту",
    "Error": "Ошибка",
    "Explain": "Объясните политику",
    "Explain why a destination routes via VPN or Direct ISP, with rule priority matching.":
        "Объясните, почему пункт назначения маршрутизируется через VPN или Direct ISP с сопоставлением приоритетов правил.",
    "Export the selected server list as JSON and TXT files.":
        "Экспортируйте выбранный список серверов в файлы JSON и TXT.",
    "FASTEST ⚡": "САМЫЙ БЫСТРЫЙ ⚡",
    "Firefox Account": "Firefox Аккаунт",
    "Firefox VPN": "Firefox VPN",
    "Firefox data allowance": "Firefox разрешение данных",
    "Force HTTPS traffic through TCP/TLS for consistent filtering.":
        "Пропускайте HTTPS-трафик через TCP/TLS для согласованной фильтрации.",
    "Force Hotspot VPN DNS": "Принудительная точка доступа VPN DNS",
    "Force VPN": "Принудительное VPN",
    "Force VPN Encrypted": "Принудительное VPN Зашифрованное",
    "Guest Hotspot": "Гостевая точка доступа",
    "HTTP/2 CONNECT": "HTTP/2 ПОДКЛЮЧИТЬ",
    "Harmoney": "Harmoney",
    "Harmoney Pro": "Harmoney Pro",
    "Harmoney Smart": "Harmoney Smart",
    "Host and Hotspot clients": "Клиенты узла и точки доступа",
    "Host machine only": "Только хост-компьютер",
    "Hotspot & Devices": "Точка доступа и устройства",
    "Hotspot Doctor & Diagnostics":
        "Восстановление точки доступа и диагностика",
    "Hotspot IPv6 Policy": "Точка доступа IPv6",
    "Hotspot clients only": "Только клиенты Hotspot",
    "IKEv2": "IKEv2",
    "IPv6 leak protection": "IPv6 защита от утечек",
    "Import ZIP Archive": "Импортируйте ZIP-архив",
    "Inspect XFRM interface, table 220, IP rules, and verify live connectivity safely.":
        "Проверьте интерфейс XFRM, таблицу 220, правила IP и проверьте безопасность живого соединения.",
    "Keep domestic services and banking reachable when the VPN drops":
        "Обеспечить доступность внутренних услуг и банковских услуг при отключении VPN",
    "Launch direct": "Запустить прямой запуск",
    "Live Connection Logs (Stream)": "Журналы активных подключений (поток)",
    "Live Logs": "Журналы в реальном времени",
    "Live Verification": "Проверка в реальном времени",
    "Live connection events from all providers and protocols":
        "События оперативного подключения от всех провайдеров и протоколов",
    "Lockdown mode (Kill Switch)": "Режим блокировки (Kill Switch)",
    "Logs copied to clipboard (secrets redacted).":
        "Журналы скопированы в буфер обмена (секреты отредактированы).",
    "Manage VPN Profiles": "Управление профилями VPN",
    "Manage connected devices, bandwidth quotas, guest Wi-Fi, and routing policies.":
        "Управление подключенными устройствами, квотами пропускной способности, гостевой Wi-Fi и политиками маршрутизации.",
    "Mbps": "Mbps",
    "Network Subnets (CIDRs)": "Сетевые подсети (CIDRs)",
    "Network unjammed: Kill switch, routes, and XFRM interfaces restored to normal.":
        "Сеть не заблокирована: аварийный переключатель, маршруты и интерфейсы XFRM восстановлены в нормальном состоянии.",
    "New Custom List": "Новый пользовательский список",
    "No CIDR rules yet.": "Правил CIDR пока нет.",
    "No advanced policy rules configured.":
        "Правила расширенной политики не настроены.",
    "No custom bypass rules.": "Никаких пользовательских правил обхода.",
    "No custom lists created yet.": "Пользовательские списки пока не созданы.",
    "No devices currently connected to hotspot.":
        "В настоящее время к точке доступа нет подключенных устройств. Политика",
    "No endpoint candidates configured.":
        "Кандидаты на конечные точки не настроены.",
    "No matching events yet. Start a VPN connection to collect logs.":
        "Подходящих событий пока нет. Запустите соединение VPN для сбора журналов.",
    "Notify only": "Уведомить только",
    "Offline cache ready": "Автономный кэш готов",
    "OpenVPN": "OpenVPN",
    "Operation failed": "Операция не удалась",
    "Overall Tunnel Health": "Общее состояние туннеля",
    "Pause Device Connection": "Приостановить подключение устройства",
    "Ping": "Ping",
    "Prevent connected hotspot clients from communicating directly.":
        "Предотвратить прямое взаимодействие подключенных клиентов точки доступа. Политика",
    "Protected Hotspot Options": "Параметры защищенной точки доступа",
    "Protection HUD": "Панель защиты",
    "Protection settings are applied by Android VpnService and take effect after reconnecting.":
        "Настройки защиты применяются Android VpnService и вступают в силу после повторного подключения.",
    "Protocol": "Протокол",
    "Protocol coverage": "Покрытие протокола",
    "Provider": "Поставщик",
    "Queued…": "В очереди…",
    "Quota Exceeded Action:": "Квота превышена. Действие:",
    "Reconnect the VPN to apply Android CIDR routes.":
        "Повторное подключение VPN для применения маршрутов Android CIDR.",
    "Redirect all device DNS queries to Surfshark DNS.":
        "Перенаправить все запросы устройства DNS на Surfshark DNS.",
    "Redirect device DNS queries through the selected VPN.":
        "Перенаправить запросы устройства DNS через выбранный VPN.",
    "Refresh": "Обновление",
    "Repair Hotspot Routing": "Восстановить маршрутизацию горячих точек",
    "Route Explain": "Объяснение маршрута",
    "Route IPv6 through supported tunnels; reconnect to apply":
        "Направьте IPv6 через поддерживаемые туннели; переподключитесь, чтобы применить",
    "Route Table & XFRM Verification": "Таблица маршрутов и проверка XFRM",
    "Route specific destinations through Direct, Force VPN, or Block.":
        "Направляйте определенные пункты назначения через Direct, Force VPN или Block.",
    "Route test": "Тест маршрута",
    "Routing Policy:": "Политика маршрутизации:",
    "Run Hotspot Doctor": "Запустить Hotspot Doctor",
    "Safe Apply & LKG": "Безопасное применение и LKG",
    "Save": "Сохранить",
    "Secure VPN DNS": "Безопасный VPN DNS",
    "Select all": "Выбрать все",
    "Start Guest": "Запустить гостя",
    "Start Guest Hotspot": "Запустить гостевую точку доступа",
    "Start Guest Wi-Fi": "Запустить гостевую Wi-Fi",
    "Stop Guest": "Остановить гостя",
    "Support bundle exported and copied to clipboard.":
        "Пакет поддержки экспортирован и скопирован в буфер обмена.",
    "Surfshark": "Surfshark",
    "Talker Logs": "Журналы Talker",
    "Test": "Тест",
    "Throttle to 128kbit/s": "Уменьшить скорость до 128 Кбит/с",
    "Tunnel path audits, leak tests, latency probes, and runtime telemetry":
        "Аудит пути туннеля, тесты на утечки, проверка задержки и телеметрия во время выполнения",
    "VPN Debug Logs": "VPN Журналы отладки",
    "WireGuard": "WireGuard",
    "by MilMit": "от MilMit",
    "اسکن خودکار این دستگاه": "Автоматическое сканирование этого устройства",
    "اعمال در تنظیمات": "Применить к настройкам",
    "انصراف": "Отмена",
    "این شناسه به عنوان اثرانگشت سخت‌افزاری (Hardware Device ID) برای احراز هویت دستگاه در سرور استفاده می‌شود. می‌توانید مقادیر را تغییر دهید یا خودکار دریافت کنید:":
        "Этот идентификатор используется в качестве аппаратного отпечатка (Hardware Device ID) для аутентификации устройства на сервере. Вы можете изменить значения или получить авто:",
    "باز کردن پوشه": "Открыть папку",
    "برای بارگذاری سرورها، اشتراک خود را وارد کنید":
        "Войти для загрузки серверов",
    "بستن": "Закрыть",
    "تست اتصال": "Проверка соединения",
    "تنظیمات اتصال سرویس": "Настройки подключения службы",
    "تنظیمات سرور": "Настройки сервера",
    "تولید شناسه سخت‌افزاری دستگاه":
        "Создать идентификатор оборудования устройства",
    "جهت اتصال آسان‌تر از خط فرمان (رمز عبور متن آشکار ذخیره می‌شود)":
        "для упрощения подключения из командной строки (пароль хранится в виде открытого текста)",
    "خروجی‌گرفتن از پروفایل‌های اتصال": "Вывод профилей подключения",
    "دریافت خودکار از سخت‌افزار سیستم":
        "Автоматически получать с системного оборудования",
    "ذخیره تنظیمات": "Сохранить настройки",
    "ذخیره نام کاربری و رمز عبور در فایل متنی":
        "Сохранение имени пользователя и пароля в текстовом файле",
    "رمز عبور (Password)": "Пароль",
    "شروع استخراج": "Начать извлечение",
    "شناسه سخت‌افزاری به مقدار پیش‌فرض سرور بازنشانی شد.":
        "Идентификатор оборудования сброшен до значения по умолчанию для сервера.",
    "شناسه سخت‌افزاری دستگاه با موفقیت تنظیم شد.":
        "Идентификатор оборудования устройства успешно установлен.",
    "شناسه نهایی تولیدشده (SHA-256):":
        "Сгенерированный окончательный идентификатор (SHA-256):",
    "شناسه پیش‌فرض سرور": "Идентификатор сервера по умолчанию",
    "فایل‌ها با موفقیت استخراج شدند.": "Файлы были успешно извлечены.",
    "محل ذخیره پیش‌فرض:": "Место хранения по умолчанию:",
    "نام کاربری (Username)": "Имя пользователя",
    "ورود با موفقیت انجام شد و فهرست سرورها به‌روزرسانی گردید.":
        "Вход прошел успешно, список серверов обновлен.",
    "ورود به حساب Harmoney Pro": "Войти Harmoney Pro",
    "ورود مقادیر و ساخت دستی": "Введите значения и вручную создайте",
    "ورود و بارگذاری سرورها": "Вход и загрузка серверов",
    "پیش‌فرض سرور": "Сервер по умолчанию",
    "پیکربندی سرور (پیش‌فرض سورس کد - فقط در حالت Debug)":
        "Конфигурация сервера (исходный код по умолчанию — только в режиме отладки)",
    "ACTIVE": "АКТИВНЫЙ",
    "-- ms": "-- РС",
    "Active": "Активный",
    "API Settings": "Настройки API",
    "Add an HTTP or HTTPS subscription URL. Links are stored securely on this device.":
        "Добавьте URL-адрес подписки HTTP или HTTPS. Ссылки надежно хранятся на этом устройстве.",
    "Add subscription": "Добавить подписку",
    "All": "Все",
    "App language": "Язык приложения",
    "Add application (.exe)": "Добавить приложение (.exe)",
    "Add an application before enabling app bypass.":
        "Добавьте приложение перед включением обхода приложений.",
    "Applications": "Приложения",
    "Add at least one application to turn this on.":
        "Добавьте хотя бы одно приложение, чтобы включить эту функцию.",
    "CONNECTED": "ПОДКЛЮЧЕНО",
    "CONNECTING": "ПОДКЛЮЧЕНИЕ",
    "Bypass": "Обход",
    "A VPN operation is already running. Please wait for its status to update.":
        "Операция VPN уже запущена. Пожалуйста, подождите, пока его статус обновится.",
    "Android Lockdown is active": "Блокировка Android активна",
    "Battery Optimization Active (Doze Mode)":
        "Оптимизация заряда батареи активна (режим ожидания)",
    "Change": "Изменять",
    "Cisco": "Циско",
    "Clear": "Прозрачный",
    "Choose QR image": "Выберите QR-изображение",
    "Cancel Test": "Отменить тест",
    "Bypassing": "Обход",
    "Active Surfshark Protocol": "Активный протокол Surfshark",
    "Copied!": "Скопировано!",
    "CONNECT": "СОЕДИНЯТЬ",
    "Android supports IPv4 and IPv6 CIDR bypass. Reconnect the VPN after changing these routes; app bypass also takes effect after reconnect.":
        "Android поддерживает обход CIDR IPv4 и IPv6. Повторно подключите VPN после изменения этих маршрутов; Обход приложения также вступает в силу после повторного подключения.",
    "Connected": "Подключено",
    "Configures Windows ICS for the VPN adapter when Mobile Hotspot is active. The app verifies the ICS binding; client Internet traffic still needs an end-to-end check.":
        "Настраивает Windows ICS для адаптера VPN, когда мобильная точка доступа активна. Приложение проверяет привязку ICS; клиентский интернет-трафик по-прежнему нуждается в сквозной проверке.",
    "Connecting": "Подключение",
    "Clear stored credentials from this device":
        "Удалить сохраненные учетные данные с этого устройства",
    "Choose your desired VPN network provider":
        "Выберите желаемого поставщика сети VPN",
    "DISCONNECTED": "ОТКЛЮЧЕНО",
    "Country IPv4 ranges bypass the VPN after reconnecting. App bypass uses the Windows physical interface and requires the MilMit service.":
        "Страновые диапазоны IPv4 обходят VPN после повторного подключения. Обход приложения использует физический интерфейс Windows и требует службы MilMit.",
    "Check status": "Проверить статус",
    "Disabled": "Неполноценный",
    "DISCONNECTING": "ОТКЛЮЧЕНИЕ",
    "Country & App Bypass": "Обход страны и приложения",
    "Disable Optimization": "Отключить оптимизацию",
    "Enable Hotspot Sharing (ICS)":
        "Включить общий доступ к точкам доступа (ICS)",
    "Copy Report": "Копировать отчет",
    "Disconnect is taking longer than expected. You can try again.":
        "Отключение занимает больше времени, чем ожидалось. Вы можете попробовать еще раз.",
    "Download": "Скачать",
    "Favorites": "Избранное",
    "Configure": "Настроить",
    "Credentials encrypted in privileged platform keystore":
        "Учетные данные зашифрованы в хранилище ключей привилегированной платформы.",
    "Export Servers": "Экспорт серверов",
    "Enable per-app bypass": "Включить обход отдельных приложений",
    "Enable Lockdown in Android VPN settings":
        "Включите блокировку в настройках Android VPN.",
    "Country bypass DAT rules updated. Reconnect VPN to apply.":
        "Обновлены правила обхода DAT для стран. Переподключите VPN, чтобы применить.",
    "Encrypted tunnel verified with zero packet leakage.":
        "Зашифрованный туннель проверен на отсутствие утечки пакетов.",
    "Enabled for Harmoney": "Включено для Harmoney",
    "Firefox Account Email / User":
        "Адрес электронной почты/пользователь учетной записи Firefox",
    "FireTunnel Token / Password": "Токен/пароль FireTunnel",
    "Enable app bypass": "Включить обход приложений",
    "Firefox Account credentials are sent directly to Mozilla by the local Windows helper. The password is not saved; only the account tokens needed for future connections are stored locally.":
        "Учетные данные учетной записи Firefox отправляются непосредственно в Mozilla локальным помощником Windows. Пароль не сохраняется; локально хранятся только токены учетной записи, необходимые для будущих подключений.",
    "Disconnect": "Отключить",
    "Disabled: all traffic routes securely through encrypted VPN tunnel.":
        "Отключено: весь трафик проходит безопасно через зашифрованный VPN-туннель.",
    "Firefox VPN Token & Auth": "Токен и аутентификация Firefox VPN",
    "Enable Split Tunneling": "Включить разделенное туннелирование",
    "Firefox VPN Account": "VPN-аккаунт Firefox",
    "History": "История",
    "Harmoney Anti-Censorship Core": "Ядро антицензуры Harmoney",
    "Inactive": "Неактивный",
    "Hardware Profile: Dell Latitude 7210 & Intel / Cellular LTE":
        "Профиль оборудования: Dell Latitude 7210 и Intel/Cellular LTE",
    "Hotspot Active": "Точка доступа активна",
    "Harmoney Pro Service": "Хармони Про Сервис",
    "Hotspot Inactive": "Точка доступа неактивна",
    "Harmoney Pro Connection Error": "Ошибка подключения Harmoney Pro",
    "Live Active": "Живой активный",
    "Live Real-Time Speed": "Скорость в режиме реального времени",
    "Harmoney Pro Sign In Required": "Требуется вход в Harmoney Pro",
    "Import ZIP": "Импортировать ZIP-файл",
    "Firefox Account credentials are sent directly to Mozilla by the native Android engine. Encrypted tokens never enter Flutter storage.":
        "Учетные данные учетной записи Firefox отправляются непосредственно в Mozilla собственным движком Android. Зашифрованные токены никогда не попадают в хранилище Flutter.",
    "Logged In": "Вошёл в систему",
    "Last Speed Benchmark:": "Последний тест скорости:",
    "Locations & Routes": "Места и маршруты",
    "Manage": "Управлять",
    "Load installed applications to configure per-app bypass.":
        "Загрузите установленные приложения, чтобы настроить обход каждого приложения.",
    "FireTunnel authenticates with Firefox Accounts. Credentials are sent only to the root-isolated native helper; tokens never enter Flutter storage.":
        "FireTunnel выполняет аутентификацию с помощью учетных записей Firefox. Учетные данные отправляются только встроенному помощнику, изолированному от корня; токены никогда не попадают в хранилище Flutter.",
    "Live Speed & Traffic": "Живая скорость и трафик",
    "Firefox VPN protocol": "VPN-протокол Firefox",
    "Logout": "Выход из системы",
    "KEY REQUIRED": "ТРЕБУЕТСЯ КЛЮЧ",
    "Manage Account": "Управление учетной записью",
    "No Limit Set": "Нет ограничений",
    "Load apps": "Загружать приложения",
    "Monthly Data Quota": "Ежемесячная квота данных",
    "No favorite servers.": "Нет любимых серверов.",
    "Hardware-backed encryption: Credentials are encrypted in platform vault.":
        "Аппаратное шифрование: учетные данные шифруются в хранилище платформы.",
    "No applications selected.": "Приложения не выбраны.",
    "Live bandwidth, data accounting & quota":
        "Живая пропускная способность, учет данных и квоты",
    "No active hotspot interface detected on system.":
        "В системе не обнаружен активный интерфейс точки доступа.",
    "No servers found.": "Серверы не найдены.",
    "Open": "Открыть",
    "No imported profiles found.\\nImport a ZIP archive from Surfshark Manual Setup.":
        "Импортированные профили не найдены.\\nИмпортируйте ZIP-архив из ручной настройки Surfshark.",
    "Not supported on this platform.": "Не поддерживается на этой платформе.",
    "No subscriptions added yet.": "Подписки пока не добавлены.",
    "Log in to account": "Войдите в аккаунт",
    "Open Mobile Hotspot": "Открыть мобильную точку доступа",
    "Per-app VPN bypass": "Обход VPN для каждого приложения",
    "On Android and Linux the selected subscription is used, but the VPN core may choose a different node from it.":
        "В Android и Linux используется выбранная подписка, но ядро ​​VPN может выбрать из нее другой узел.",
    "Monthly Allowance": "Ежемесячное пособие",
    "Quota information unavailable": "Информация о квотах недоступна.",
    "Re-login": "Повторный вход",
    "No speed tests recorded yet.":
        "Никаких тестов скорости пока не зарегистрировано.",
    "Manage Firefox VPN Account": "Управление учетной записью Firefox VPN",
    "Private connection service": "Служба частного подключения",
    "Per-app bypass is not supported on this platform.":
        "Обход отдельных приложений не поддерживается на этой платформе.",
    "Query latest session and traffic quota":
        "Запросить последний сеанс и квоту трафика",
    "Login Required": "Требуется вход",
    "Recent": "Недавний",
    "Recommended Fast Routes": "Рекомендуемые быстрые маршруты",
    "Quick connect": "Быстрое подключение",
    "Per-app bypass": "Обход каждого приложения",
    "Refresh status & quota": "Обновить статус и квоту",
    "Ping All": "Пинговать все",
    "Ready to perform live routing and security audits.":
        "Готовы выполнять оперативную маршрутизацию и аудит безопасности.",
    "Online": "Онлайн",
    "Re-login to account": "Повторно войдите в учетную запись",
    "Retry": "Повторить попытку",
    "Repair ICS": "Ремонт ИКС",
    "Route chosen applications or network subnets outside the VPN.":
        "Направляйте выбранные приложения или сетевые подсети за пределы VPN.",
    "Scan QR": "Сканировать QR-код",
    "Manage connection, security, and appearance":
        "Управление подключением, безопасностью и внешним видом",
    "Renew session tokens or switch account":
        "Обновите токены сеанса или смените учетную запись.",
    "Run Full Audit": "Запустить полный аудит",
    "Save securely": "Сохраняйте безопасно",
    "Select": "Выбирать",
    "Remaining traffic:": "Оставшийся трафик:",
    "Routes from Xray, WARP and MASQUE configurations. Connection is shown after traffic verification.":
        "Маршруты из конфигураций Xray, WARP и MASQUE. Соединение отображается после проверки трафика.",
    "Refresh Status": "Обновить статус",
    "Saved subscriptions": "Сохраненные подписки",
    "Security session expired; please sign in again to use servers.":
        "Сеанс безопасности истек; пожалуйста, войдите еще раз, чтобы использовать серверы.",
    "Select VPN Provider": "Выберите провайдера VPN",
    "Select a location or use fastest server":
        "Выберите местоположение или используйте самый быстрый сервер",
    "Selected apps use the physical network directly. Other apps continue using the VPN.":
        "Выбранные приложения используют физическую сеть напрямую. Другие приложения продолжают использовать VPN.",
    "Select applications to bypass the VPN tunnel and connect directly to the internet.":
        "Выберите приложения для обхода VPN-туннеля и прямого подключения к Интернету.",
    "Restore": "Восстановить",
    "Session Duration": "Продолжительность сеанса",
    "Service Username / Key ID": "Имя пользователя службы/идентификатор ключа",
    "Service Credentials & Keys": "Учетные данные и ключи службы",
    "Selected country IP ranges bypass the VPN. Reconnect after changing rules. Domain-only rules need DNS-aware routing.":
        "Диапазоны IP-адресов выбранных стран обходят VPN. Переподключитесь после изменения правил. Правила только для домена требуют маршрутизации с учетом DNS.",
    "Service Password / Private Key": "Сервисный пароль/закрытый ключ",
    "Save Quota": "Сохранить квоту",
    "Sign in": "Войти",
    "Settings": "Настройки",
    "Set Quota": "Установить квоту",
    "Session Upload:": "Загрузка сеанса:",
    "Scan subscription QR": "Сканировать QR-код подписки",
    "Service username and password required for handshakes":
        "Для рукопожатий необходимы имя пользователя и пароль службы.",
    "Share secure encrypted tunnel with phones & tablets":
        "Поделитесь безопасным зашифрованным туннелем с телефонами и планшетами",
    "Sign In to Harmoney Pro": "Войдите в Harmoney Pro",
    "Show All Servers": "Показать все серверы",
    "Session Download:": "Загрузка сессии:",
    "Sign In": "Войти",
    "Select Surfshark Protocol": "Выберите протокол Surfshark.",
    "Smart Service Suitability": "Пригодность интеллектуальных услуг",
    "Split Tunneling": "Разделенное туннелирование",
    "Speed report copied to clipboard!":
        "Отчет о скорости скопирован в буфер обмена!",
    "Surfshark Service Account": "Учетная запись службы Surfshark",
    "Temporary isolated guest Wi-Fi with automatic expiry and subnet isolation.":
        "Временный изолированный гостевой Wi-Fi с автоматическим сроком действия и изоляцией подсети.",
    "System Apps": "Системные приложения",
    "Test all": "Протестировать все",
    "Start Speed Test": "Начать тест скорости",
    "Session Expired": "Срок действия сессии истек",
    "Sign In / Account": "Войти / Аккаунт",
    "Speed Test History": "История испытаний скорости",
    "Unlimited quota": "Неограниченная квота",
    "Traffic Analytics": "Аналитика трафика",
    "Update Country Rules": "Обновить правила страны",
    "Upload": "Загрузить",
    "To prevent Android from killing the VPN connection in background, disable battery optimization for this app.":
        "Чтобы Android не отключал VPN-соединение в фоновом режиме, отключите оптимизацию заряда батареи для этого приложения.",
    "Show servers": "Показать серверы",
    "Tunnel-managed DNS; reconnect to apply":
        "DNS с туннельным управлением; переподключитесь, чтобы подать заявку",
    "The previous VPN operation timed out. You can try again.":
        "Время предыдущей операции VPN истекло. Вы можете попробовать еще раз.",
    "Uses Windows native per-process routing to send selected apps directly over your physical network adapter. Requires a compatible Windows build and the MilMit VPN service.":
        "Использует собственную маршрутизацию каждого процесса Windows для отправки выбранных приложений непосредственно через физический сетевой адаптер. Требуется совместимая сборка Windows и служба MilMit VPN.",
    "Verify": "Проверять",
    "VPN service credentials saved securely.":
        "Учетные данные службы VPN надежно сохранены.",
    "VPN-to-hotspot ICS binding verified.":
        "Привязка VPN к точке доступа ICS проверена.",
    "Sign in to activate Firefox tunnel and view data quota.":
        "Войдите, чтобы активировать туннель Firefox и просмотреть квоту данных.",
    "You will receive visual alerts when reaching this limit.":
        "При достижении этого лимита вы получите визуальные оповещения.",
    "Theme": "Тема",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Windows IKEv2 route injection remains IPv4-only. Reconnect after changing rules.":
        "Xray напрямую маршрутизирует выбранные диапазоны IPv4/IPv6 и связанный список иранских доменов. Внедрение маршрута Windows IKEv2 остается только для IPv4. Переподключитесь после изменения правил.",
    "Unknown": "Неизвестный",
    "VPN Hotspot Sharing (Windows ICS)":
        "Общий доступ к точкам доступа VPN (Windows ICS)",
    "UNKNOWN": "НЕИЗВЕСТНЫЙ",
    "Unlimited (Off)": "Безлимит (Выкл.)",
    "Sort by latency": "Сортировать по задержке",
    "Windows per-app bypass routes selected apps directly through the physical adapter, independent of the active VPN protocol. Windows build support and the privileged MilMit service are required.":
        "Обход отдельных приложений Windows маршрутизирует выбранные приложения напрямую через физический адаптер, независимо от активного протокола VPN. Требуется поддержка сборки Windows и привилегированный сервис MilMit.",
    "WFP applies the rules independently of IKEv2, WireGuard, OpenVPN, and Xray. UDP relay is not complete yet, so apps requiring UDP will not be fully bypassed.":
        "WFP применяет правила независимо от IKEv2, WireGuard, OpenVPN и Xray. Ретрансляция UDP еще не завершена, поэтому приложения, требующие UDP, не будут полностью обойдены.",
    "User Apps": "Пользовательские приложения",
    "No imported profiles found.\nImport a ZIP archive from Surfshark Manual Setup.":
        "Импортированные профили не найдены.\nИмпортируйте ZIP-архив из раздела ручной настройки Surfshark.",
    "Download Harmoney Pro": "Скачать Harmoney Pro",
    "More protocols and connection options":
        "\u0411\u043e\u043b\u044c\u0448\u0435\u0020\u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u043e\u0432\u0020\u0438\u0020\u0432\u0430\u0440\u0438\u0430\u043d\u0442\u043e\u0432\u0020\u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u044f",
    "The Harmoney Pro download link is not available yet.":
        "\u0421\u0441\u044b\u043b\u043a\u0430\u0020\u0434\u043b\u044f\u0020\u0441\u043a\u0430\u0447\u0438\u0432\u0430\u043d\u0438\u044f\u0020\u0048\u0061\u0072\u006d\u006f\u006e\u0065\u0079\u0020\u0050\u0072\u006f\u0020\u043f\u043e\u043a\u0430\u0020\u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430\u002e",
    "Select connection service": "Выберите службу подключения",
    "Connection service": "Служба подключения",
    "Personal subscriptions": "Личные подписки",
    "Smart routing and personal subscriptions":
        "Умная маршрутизация и личные подписки",
    "Lightweight Firefox VPN tunnel": "Лёгкий туннель Firefox VPN",
    "Rules apply to the active VPN route. UDP relay is not complete yet; apps requiring UDP may not be fully bypassed.":
        "Правила применяются к активному маршруту VPN. Пересылка UDP ещё не завершена; приложениям, которым нужен UDP, может быть недоступен полный обход VPN.",
    "Hotspot sharing preference saved.":
        "Настройки раздачи точки доступа сохранены.",
    "Save preference": "Сохранить настройку",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Reconnect after changing rules.":
        "Xray напрямую маршрутизирует выбранные диапазоны IPv4/IPv6 и встроенный список иранских доменов. После изменения правил подключитесь заново.",
    "Auditing…": "Выполняется проверка…",
    "Checking account…": "Проверка учётной записи…",
    "Checking secure credential vault…":
        "Проверка защищённого хранилища учётных данных…",
    "Checking…": "Проверка…",
    "Disconnect is still being processed…":
        "Запрос на отключение ещё обрабатывается…",
    "Disconnect requested…": "Запрошено отключение…",
    "Disconnecting…": "Отключение…",
    "Importing…": "Импорт…",
    "Signing in…": "Выполняется вход…",
    "Starting connection…": "Подключение…",
    "Updating…": "Обновление…",
    "Working…": "Выполняется…",
    "Establishing secure tunnel…": "Создание защищённого туннеля…",
  },
  "zh": {
    "0 GB (Off)": "0 GB（关闭）",
    "100 GB": "100 GB",
    "200 GB": "200 GB",
    "50 GB": "50 GB",
    "A calmer connection. A brighter world.": "更平静的连接。一个更光明的世界。",
    "Add": "添加",
    "Add CIDR rule": "添加 CIDR 规则",
    "Add Policy": "添加策略",
    "Add Routing Policy Rule": "添加路由策略规则",
    "Add split-tunnel CIDR": "添加分割隧道 CIDR",
    "Advanced Policy Rules": "高级策略规则",
    "Advanced Routing & Protection": "高级路由和保护",
    "Allow IPv6": "允许 IPv6",
    "Allow Iran traffic during Lockdown": "锁定期间允许伊朗流量",
    "Always-on VPN": "始终在线 VPN",
    "Always-on and Lockdown cover Firefox, WireGuard, IKEv2 and OpenVPN. DNS and IPv6 policies are enforced by each active tunnel profile.":
        "常开和锁定涵盖 Firefox、WireGuard、IKEv2 和 OpenVPN。 DNS 和 IPv6 策略由每个活动隧道配置文件强制执行。",
    "Always-on and Lockdown cover supported VPN connections. DNS and IPv6 policies are enforced by the active tunnel.":
        "常开和锁定盖支持 VPN 连接。 DNS 和 IPv6 策略由活动隧道强制执行。",
    "Android Protection": "Android 保护",
    "Android app bypass applies after reconnecting the VPN.":
        "重新连接 VPN 后，将应用 Android 应用程序旁路。",
    "Auto (Fallback)": "自动（后备）",
    "Block Destination": "块目标",
    "Block IPv6 (Leak Protection)": "阻止 IPv6（泄漏保护）",
    "Block Internet Access": "阻止 Internet 访问",
    "Block QUIC (UDP 443)": "块 QUIC (UDP 443)",
    "Block all internet leaks when the VPN drops unexpectedly":
        "当 VPN 意外掉落时阻止所有互联网泄漏",
    "Block connections without VPN": "阻止无 VPN",
    "Block internet": "阻止互联网",
    "Bypass VPN": "绕过 VPN",
    "Cancel": "取消",
    "Client Isolation": "客户端隔离",
    "Close": "关闭",
    "Connection": "连接",
    "Console output copied to clipboard.": "控制台输出已复制到剪贴板。",
    "Country destinations bypass the VPN directly through the ISP; other traffic remains inside the VPN.":
        "国家/地区目的地直接通过 ISP 绕过 VPN；其他流量保留在 VPN 内。",
    "Create": "创建",
    "Create new list": "创建新列表",
    "Custom Bypass Rules": "自定义绕过规则",
    "Custom Location Lists": "自定义位置列表",
    "Default Hotspot Route": "默认热点路由",
    "Deselect all": "取消选择全部",
    "Diagnostic Terminal Output": "诊断终端输出",
    "Diagnostics & Health": "诊断与健康",
    "Direct (Bypass VPN)": "直接（绕过 VPN）",
    "Domains, IPv4 addresses or CIDRs that always bypass the VPN":
        "始终绕过 VPN 的域、IPv4 地址或 CIDRs",
    "Done": "完成",
    "Emergency Stop": "紧急停止",
    "Emergency Stop executed: Processes terminated and physical network unjammed.":
        "执行紧急停止：进程终止且物理网络畅通无阻。",
    "Endpoint Candidates": "候选端点",
    "Enforce Quota": "强制配额",
    "Error": "错误",
    "Explain": "解释",
    "Explain why a destination routes via VPN or Direct ISP, with rule priority matching.":
        "说明为什么目的地通过 VPN 或直接 ISP 进行路由，并具有规则优先级匹配。",
    "Export the selected server list as JSON and TXT files.":
        "将选定的服务器列表导出为 JSON 和 TXT 文件。",
    "FASTEST ⚡": "最快 ⚡",
    "Firefox Account": "Firefox 帐户",
    "Firefox VPN": "Firefox VPN",
    "Firefox data allowance": "Firefox 数据余量",
    "Force HTTPS traffic through TCP/TLS for consistent filtering.":
        "强制 HTTPS 流量通过 TCP/TLS 以实现一致的过滤。",
    "Force Hotspot VPN DNS": "强制热点 VPN DNS",
    "Force VPN": "强制 VPN",
    "Force VPN Encrypted": "强制 VPN 加密",
    "Guest Hotspot": "访客热点",
    "HTTP/2 CONNECT": "HTTP/2 连接",
    "Harmoney": "Harmoney",
    "Harmoney Pro": "Harmoney Pro",
    "Harmoney Smart": "Harmoney Smart",
    "Host and Hotspot clients": "主机和热点客户端",
    "Host machine only": "仅主机",
    "Hotspot & Devices": "热点和设备",
    "Hotspot Doctor & Diagnostics": "热点医生和诊断",
    "Hotspot IPv6 Policy": "热点 IPv6 策略",
    "Hotspot clients only": "仅热点客户端",
    "IKEv2": "IKEv2",
    "IPv6 leak protection": "IPv6 泄漏保护",
    "Import ZIP Archive": "导入 ZIP 存档",
    "Inspect XFRM interface, table 220, IP rules, and verify live connectivity safely.":
        "检查 XFRM 接口、表 220、IP 规则，并安全地验证实时连接。",
    "Keep domestic services and banking reachable when the VPN drops":
        "当 VPN 下降时保持国内服务和银行业务可访问",
    "Launch direct": "直接启动",
    "Live Connection Logs (Stream)": "实时连接日志（流）",
    "Live Logs": "实时日志",
    "Live Verification": "实时验证",
    "Live connection events from all providers and protocols":
        "来自所有提供商和协议的实时连接事件",
    "Lockdown mode (Kill Switch)": "锁定模式（终止开关）",
    "Logs copied to clipboard (secrets redacted).": "日志复制到剪贴板（秘密已编辑）。",
    "Manage VPN Profiles": "管理 VPN 配置文件",
    "Manage connected devices, bandwidth quotas, guest Wi-Fi, and routing policies.":
        "管理连接的设备、带宽配额、访客 Wi-Fi 和路由策略。",
    "Mbps": "Mbps",
    "Network Subnets (CIDRs)": "网络子网 (CIDRs)",
    "Network unjammed: Kill switch, routes, and XFRM interfaces restored to normal.":
        "网络畅通：Kill switch、路由和 XFRM 接口恢复正常。",
    "New Custom List": "新自定义列表",
    "No CIDR rules yet.": "尚无 CIDR 规则。",
    "No advanced policy rules configured.": "未配置高级策略规则。",
    "No custom bypass rules.": "无自定义绕过规则。",
    "No custom lists created yet.": "尚未创建自定义列表。",
    "No devices currently connected to hotspot.": "当前没有设备连接到热点。",
    "No endpoint candidates configured.": "未配置端点候选。",
    "No matching events yet. Start a VPN connection to collect logs.":
        "还没有匹配的事件。启动VPN连接来收集日志。",
    "Notify only": "仅通知",
    "Offline cache ready": "离线缓存就绪",
    "OpenVPN": "OpenVPN",
    "Operation failed": "操作失败",
    "Overall Tunnel Health": "总体隧道运行状况",
    "Pause Device Connection": "暂停设备连接",
    "Ping": "Ping",
    "Prevent connected hotspot clients from communicating directly.":
        "防止连接的热点客户端直接通信。",
    "Protected Hotspot Options": "受保护的热点选项",
    "Protection HUD": "保护 HUD",
    "Protection settings are applied by Android VpnService and take effect after reconnecting.":
        "保护设置由 Android VpnService 应用，并在重新连接后生效。",
    "Protocol": "协议",
    "Protocol coverage": "的连接 协议覆盖范围",
    "Provider": "提供商",
    "Queued…": "已排队...",
    "Quota Exceeded Action:": "超出配额操作：",
    "Reconnect the VPN to apply Android CIDR routes.":
        "重新连接 VPN 以应用 Android CIDR 路由。",
    "Redirect all device DNS queries to Surfshark DNS.":
        "将所有设备 DNS 查询重定向到 Surfshark DNS。",
    "Redirect device DNS queries through the selected VPN.":
        "通过选定的 VPN 重定向设备 DNS 查询。",
    "Refresh": "刷新",
    "Repair Hotspot Routing": "修复热点路由",
    "Route Explain": "路由说明",
    "Route IPv6 through supported tunnels; reconnect to apply":
        "通过支持的隧道路由 IPv6；重新连接以应用",
    "Route Table & XFRM Verification": "路由表和 XFRM 验证",
    "Route specific destinations through Direct, Force VPN, or Block.":
        "通过直接、强制 VPN 或阻止路由特定目的地。",
    "Route test": "路由测试",
    "Routing Policy:": "路由策略：",
    "Run Hotspot Doctor": "运行热点医生",
    "Safe Apply & LKG": "安全应用和 LKG",
    "Save": "保存",
    "Secure VPN DNS": "安全 VPN DNS",
    "Select all": "选择全部",
    "Start Guest": "启动访客",
    "Start Guest Hotspot": "启动访客热点",
    "Start Guest Wi-Fi": "启动访客 Wi-Fi",
    "Stop Guest": "停止访客",
    "Support bundle exported and copied to clipboard.": "支持导出捆绑包并复制到剪贴板。",
    "Surfshark": "Surfshark",
    "Talker Logs": "通话者日志",
    "Test": "测试",
    "Throttle to 128kbit/s": "限制为 128kbit/s",
    "Tunnel path audits, leak tests, latency probes, and runtime telemetry":
        "隧道路径审核、泄漏测试、延迟探测和运行时遥测",
    "VPN Debug Logs": "VPN 调试日志",
    "WireGuard": "WireGuard",
    "by MilMit": "，作者：MilMit",
    "اسکن خودکار این دستگاه": "自动扫描此设备",
    "اعمال در تنظیمات": "应用到设置",
    "انصراف": "取消",
    "این شناسه به عنوان اثرانگشت سخت‌افزاری (Hardware Device ID) برای احراز هویت دستگاه در سرور استفاده می‌شود. می‌توانید مقادیر را تغییر دهید یا خودکار دریافت کنید:":
        "此 ID 用作硬件指纹 (Hardware Device ID) 以对服务器上的设备进行身份验证。您可以更改值或获取自动：",
    "باز کردن پوشه": "打开文件夹",
    "برای بارگذاری سرورها، اشتراک خود را وارد کنید": "登录加载服务器",
    "بستن": "关闭",
    "تست اتصال": "连接测试",
    "تنظیمات اتصال سرویس": "服务连接设置",
    "تنظیمات سرور": "服务器设置",
    "تولید شناسه سخت‌افزاری دستگاه": "生成设备硬件 ID",
    "جهت اتصال آسان‌تر از خط فرمان (رمز عبور متن آشکار ذخیره می‌شود)":
        "中，以便更轻松地从命令行连接（密码以明文形式存储）",
    "خروجی‌گرفتن از پروفایل‌های اتصال": "输出连接配置文件",
    "دریافت خودکار از سخت‌افزار سیستم": "自动从系统硬件获取",
    "ذخیره تنظیمات": "保存设置",
    "ذخیره نام کاربری و رمز عبور در فایل متنی": "将用户名和密码保存在文本文件",
    "رمز عبور (Password)": "密码",
    "شروع استخراج": "开始提取",
    "شناسه سخت‌افزاری به مقدار پیش‌فرض سرور بازنشانی شد.": "硬件标识符重置为服务器默认值。",
    "شناسه سخت‌افزاری دستگاه با موفقیت تنظیم شد.": "设备的硬件ID设置成功。",
    "شناسه نهایی تولیدشده (SHA-256):": "最终生成的 ID (SHA-256)：",
    "شناسه پیش‌فرض سرور": "默认服务器 ID",
    "فایل‌ها با موفقیت استخراج شدند.": "文件已成功提取。",
    "محل ذخیره پیش‌فرض:": "默认存储位置：",
    "نام کاربری (Username)": "用户名",
    "ورود با موفقیت انجام شد و فهرست سرورها به‌روزرسانی گردید.":
        "登录成功并且服务器列表已更新。",
    "ورود به حساب Harmoney Pro": "登录 Harmoney Pro",
    "ورود مقادیر و ساخت دستی": "输入值并手动构建",
    "ورود و بارگذاری سرورها": "登录和加载服务器",
    "پیش‌فرض سرور": "默认服务器",
    "پیکربندی سرور (پیش‌فرض سورس کد - فقط در حالت Debug)":
        "服务器配置（默认源代码 - 仅在 Debug 模式下）",
    "-- ms": " -  多发性硬化症",
    "Active": "积极的",
    "A VPN operation is already running. Please wait for its status to update.":
        "VPN 操作已在运行。请等待其状态更新。",
    "ACTIVE": "积极的",
    "API Settings": "API设置",
    "Applications": "应用领域",
    "CONNECT": "连接",
    "Bypass": "旁路",
    "Active Surfshark Protocol": "主动 Surfshark 协议",
    "Add an HTTP or HTTPS subscription URL. Links are stored securely on this device.":
        "添加 HTTP 或 HTTPS 订阅 URL。链接安全地存储在此设备上。",
    "Add at least one application to turn this on.": "添加至少一个应用程序来启用此功能。",
    "CONNECTED": "连接",
    "Change": "改变",
    "All": "全部",
    "Check status": "检查状态",
    "Choose QR image": "选择二维码图像",
    "CONNECTING": "连接",
    "Add application (.exe)": "添加应用程序（.exe）",
    "Cancel Test": "取消测试",
    "Clear": "清除",
    "Connected": "已连接",
    "Connecting": "正在连接",
    "Add subscription": "添加订阅",
    "Add an application before enabling app bypass.": "在启用应用程序旁路之前添加应用程序。",
    "Android Lockdown is active": "Android 锁定已激活",
    "Bypassing": "绕过",
    "Copy Report": "复制报告",
    "Battery Optimization Active (Doze Mode)": "电池优化活动（打盹模式）",
    "Cisco": "思科",
    "Copied!": "复制了！",
    "Disabled": "残疾人",
    "Clear stored credentials from this device": "清除该设备中存储的凭据",
    "Country IPv4 ranges bypass the VPN after reconnecting. App bypass uses the Windows physical interface and requires the MilMit service.":
        "重新连接后，国家/地区 IPv4 范围会绕过 VPN。应用程序旁路使用 Windows 物理接口并需要 MilMit 服务。",
    "Download": "下载",
    "Disconnect": "断开",
    "DISCONNECTED": "已断开连接",
    "Country & App Bypass": "国家/地区和应用程序绕过",
    "Credentials encrypted in privileged platform keystore": "在特权平台密钥库中加密的凭证",
    "Disabled: all traffic routes securely through encrypted VPN tunnel.":
        "禁用：所有流量通过加密 VPN 隧道安全路由。",
    "Enable Hotspot Sharing (ICS)": "启用热点共享 (ICS)",
    "Enable Lockdown in Android VPN settings": "在 Android VPN 设置中启用锁定",
    "Disconnect is taking longer than expected. You can try again.":
        "断开连接所花费的时间比预期要长。你可以再试一次。",
    "Choose your desired VPN network provider": "选择您想要的 VPN 网络提供商",
    "Favorites": "收藏夹",
    "Configure": "配置",
    "Enable app bypass": "启用应用程序绕过",
    "Enable per-app bypass": "启用每个应用程序绕过",
    "DISCONNECTING": "断开连接",
    "Configures Windows ICS for the VPN adapter when Mobile Hotspot is active. The app verifies the ICS binding; client Internet traffic still needs an end-to-end check.":
        "当移动热点处于活动状态时，为 VPN 适配器配置 Windows ICS。应用程序验证ICS绑定；客户端互联网流量仍然需要端到端检查。",
    "Enabled for Harmoney": "为和谐而启用",
    "Country bypass DAT rules updated. Reconnect VPN to apply.":
        "更新了国家/地区绕过 DAT 规则。重新连接 VPN 即可应用。",
    "Export Servers": "导出服务器",
    "Firefox VPN Account": "火狐 VPN 帐户",
    "Firefox VPN Token & Auth": "Firefox VPN 令牌和身份验证",
    "Encrypted tunnel verified with zero packet leakage.": "加密隧道经过验证，零数据包泄漏。",
    "FireTunnel Token / Password": "FireTunnel 令牌/密码",
    "Harmoney Pro Connection Error": "Harmoney Pro 连接错误",
    "Firefox Account Email / User": "Firefox 帐户电子邮件/用户",
    "Firefox Account credentials are sent directly to Mozilla by the local Windows helper. The password is not saved; only the account tokens needed for future connections are stored locally.":
        "Firefox 帐户凭据由本地 Windows 帮助程序直接发送到 Mozilla。密码不保存；仅将来连接所需的帐户令牌存储在本地。",
    "Inactive": "不活跃",
    "Firefox Account credentials are sent directly to Mozilla by the native Android engine. Encrypted tokens never enter Flutter storage.":
        "Firefox 帐户凭据由本机 Android 引擎直接发送到 Mozilla。加密的令牌永远不会进入 Flutter 存储。",
    "Hardware-backed encryption: Credentials are encrypted in platform vault.":
        "硬件支持的加密：凭证在平台库中加密。",
    "Hardware Profile: Dell Latitude 7210 & Intel / Cellular LTE":
        "硬件配置文件：Dell Latitude 7210 和英特尔/蜂窝 LTE",
    "Disable Optimization": "禁用优化",
    "Hotspot Inactive": "热点不活动",
    "Firefox VPN protocol": "火狐VPN协议",
    "History": "历史",
    "Enable Split Tunneling": "启用分割隧道",
    "Harmoney Pro Sign In Required": "Harmoney Pro 需要登录",
    "Harmoney Anti-Censorship Core": "Harmoney 反审查核心",
    "Live bandwidth, data accounting & quota": "实时带宽、数据统计和配额",
    "Logout": "退出",
    "Load installed applications to configure per-app bypass.":
        "加载已安装的应用程序以配置每个应用程序旁路。",
    "FireTunnel authenticates with Firefox Accounts. Credentials are sent only to the root-isolated native helper; tokens never enter Flutter storage.":
        "FireTunnel 使用 Firefox 帐户进行身份验证。凭证仅发送到根隔离的本机助手；令牌永远不会进入 Flutter 存储。",
    "Last Speed Benchmark:": "最后速度基准：",
    "Live Active": "现场活跃",
    "KEY REQUIRED": "需要钥匙",
    "Locations & Routes": "地点及路线",
    "Hotspot Active": "热点活跃",
    "Harmoney Pro Service": "和谐专业服务",
    "Load apps": "加载应用程序",
    "Live Speed & Traffic": "实时速度和交通",
    "Logged In": "已登录",
    "App language": "应用语言",
    "Live Real-Time Speed": "实时实时速度",
    "Login Required": "需要登录",
    "Import ZIP": "导入邮政编码",
    "No applications selected.": "未选择任何应用程序。",
    "No active hotspot interface detected on system.": "系统上未检测到活动热点接口。",
    "Android supports IPv4 and IPv6 CIDR bypass. Reconnect the VPN after changing these routes; app bypass also takes effect after reconnect.":
        "Android 支持 IPv4 和 IPv6 CIDR 绕过。更改这些路由后重新连接VPN；应用绕过在重新连接后也会生效。",
    "Manage Firefox VPN Account": "管理 Firefox VPN 帐户",
    "Log in to account": "登录帐户",
    "Manage connection, security, and appearance": "管理连接、安全性和外观",
    "No speed tests recorded yet.": "尚未记录速度测试。",
    "Monthly Data Quota": "每月数据配额",
    "No favorite servers.": "没有最喜欢的服务器。",
    "No servers found.": "未找到服务器。",
    "Manage": "管理",
    "Open": "打开",
    "On Android and Linux the selected subscription is used, but the VPN core may choose a different node from it.":
        "在 Android 和 Linux 上，使用选定的订阅，但 VPN 核心可能会从中选择不同的节点。",
    "No imported profiles found.\\nImport a ZIP archive from Surfshark Manual Setup.":
        "未找到导入的配置文件。\\n从 Surfshark 手动设置导入 ZIP 存档。",
    "Manage Account": "管理账户",
    "Online": "在线的",
    "Re-login": "重新登录",
    "Recent": "最近的",
    "Per-app VPN bypass": "每个应用 VPN 绕过",
    "No Limit Set": "无限制设置",
    "Re-login to account": "重新登录账户",
    "Per-app bypass": "每个应用程序绕过",
    "Quick connect": "快速连接",
    "Ping All": "Ping 全部",
    "Monthly Allowance": "每月津贴",
    "Open Mobile Hotspot": "打开移动热点",
    "Per-app bypass is not supported on this platform.": "此平台不支持按应用程序绕过。",
    "Ready to perform live routing and security audits.": "准备好执行实时路由和安全审核。",
    "Renew session tokens or switch account": "续订会话令牌或切换帐户",
    "Query latest session and traffic quota": "查询最新会话及流量配额",
    "Quota information unavailable": "配额信息不可用",
    "No subscriptions added yet.": "尚未添加订阅。",
    "Not supported on this platform.": "此平台不支持。",
    "Private connection service": "私人连接服务",
    "Restore": "恢复",
    "Retry": "重试",
    "Remaining traffic:": "剩余流量：",
    "Refresh Status": "刷新状态",
    "Repair ICS": "修复ICS",
    "Refresh status & quota": "刷新状态和配额",
    "Recommended Fast Routes": "推荐快速路线",
    "Scan QR": "扫描二维码",
    "Select": "选择",
    "Route chosen applications or network subnets outside the VPN.":
        "将选定的应用程序或网络子网路由到 VPN 外部。",
    "Routes from Xray, WARP and MASQUE configurations. Connection is shown after traffic verification.":
        "来自 Xray、WARP 和 MASQUE 配置的路由。流量验证后会显示连接。",
    "Service Username / Key ID": "服务用户名/密钥 ID",
    "Selected apps use the physical network directly. Other apps continue using the VPN.":
        "选定的应用程序直接使用物理网络。其他应用程序继续使用 VPN。",
    "Service Password / Private Key": "服务密码/私钥",
    "Settings": "设置",
    "Selected country IP ranges bypass the VPN. Reconnect after changing rules. Domain-only rules need DNS-aware routing.":
        "选定的国家/地区 IP 范围绕过 VPN。更改规则后重新连接。仅域规则需要 DNS 感知路由。",
    "Security session expired; please sign in again to use servers.":
        "安全会话已过期；请重新登录以使用服务器。",
    "Select Surfshark Protocol": "选择 Surfshark 协议",
    "Service username and password required for handshakes": "握手所需的服务用户名和密码",
    "Select applications to bypass the VPN tunnel and connect directly to the internet.":
        "选择绕过 VPN 隧道并直接连接到互联网的应用程序。",
    "Select VPN Provider": "选择 VPN 提供商",
    "Scan subscription QR": "扫描订阅二维码",
    "Save Quota": "保存配额",
    "Saved subscriptions": "已保存的订阅",
    "Select a location or use fastest server": "选择位置或使用最快的服务器",
    "Save securely": "安全保存",
    "Run Full Audit": "运行全面审核",
    "Sign In": "登入",
    "Session Download:": "会议下载：",
    "Set Quota": "设置配额",
    "Session Duration": "会话持续时间",
    "Session Upload:": "会话上传：",
    "Service Credentials & Keys": "服务凭证和密钥",
    "Session Expired": "会话已过期",
    "Split Tunneling": "分割隧道",
    "Smart Service Suitability": "智能服务适用性",
    "Sign in to activate Firefox tunnel and view data quota.":
        "登录以激活 Firefox 隧道并查看数据配额。",
    "Start Speed Test": "启动速度测试",
    "Show All Servers": "显示所有服务器",
    "Sign In / Account": "登录/帐户",
    "Show servers": "显示服务器",
    "Share secure encrypted tunnel with phones & tablets": "与手机和平板电脑共享安全加密隧道",
    "Sort by latency": "按延迟排序",
    "Theme": "主题",
    "The previous VPN operation timed out. You can try again.":
        "之前的 VPN 操作超时。你可以再试一次。",
    "UNKNOWN": "未知",
    "Temporary isolated guest Wi-Fi with automatic expiry and subnet isolation.":
        "临时隔离的访客 Wi-Fi，具有自动过期和子网隔离功能。",
    "To prevent Android from killing the VPN connection in background, disable battery optimization for this app.":
        "为了防止 Android 在后台终止 VPN 连接，请禁用此应用程序的电池优化。",
    "Unknown": "未知",
    "Surfshark Service Account": "Surfshark 服务帐户",
    "Traffic Analytics": "流量分析",
    "Test all": "测试全部",
    "System Apps": "系统应用程序",
    "Sign In to Harmoney Pro": "登录 Harmoney Pro",
    "Upload": "上传",
    "Sign in": "登入",
    "WFP applies the rules independently of IKEv2, WireGuard, OpenVPN, and Xray. UDP relay is not complete yet, so apps requiring UDP will not be fully bypassed.":
        "WFP 独立于 IKEv2、WireGuard、OpenVPN 和 Xray 应用规则。 UDP 中继尚未完成，因此需要 UDP 的应用程序不会被完全绕过。",
    "Speed report copied to clipboard!": "速度报告已复制到剪贴板！",
    "VPN Hotspot Sharing (Windows ICS)": "VPN 热点共享 (Windows ICS)",
    "VPN service credentials saved securely.": "安全保存 VPN 服务凭据。",
    "Speed Test History": "速度测试历史",
    "User Apps": "用户应用程序",
    "Unlimited quota": "无限配额",
    "Unlimited (Off)": "无限（关闭）",
    "Update Country Rules": "更新国家/地区规则",
    "Tunnel-managed DNS; reconnect to apply": "隧道管理的 DNS；重新连接即可申请",
    "Uses Windows native per-process routing to send selected apps directly over your physical network adapter. Requires a compatible Windows build and the MilMit VPN service.":
        "使用 Windows 本机每进程路由直接通过物理网络适配器发送选定的应用程序。需要兼容的 Windows 版本和 MilMit VPN 服务。",
    "Verify": "核实",
    "You will receive visual alerts when reaching this limit.":
        "当达到此限制时，您将收到视觉警报。",
    "Windows per-app bypass routes selected apps directly through the physical adapter, independent of the active VPN protocol. Windows build support and the privileged MilMit service are required.":
        "Windows 按应用程序旁路直接通过物理适配器路由选定的应用程序，独立于活动 VPN 协议。需要 Windows 构建支持和特权 MilMit 服务。",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Windows IKEv2 route injection remains IPv4-only. Reconnect after changing rules.":
        "Xray 直接路由选定的 IPv4/IPv6 范围和捆绑的伊朗域列表。 Windows IKEv2 路由注入仍然仅限 IPv4。更改规则后重新连接。",
    "VPN-to-hotspot ICS binding verified.": "VPN 到热点 ICS 绑定已验证。",
    "No imported profiles found.\nImport a ZIP archive from Surfshark Manual Setup.":
        "未找到已导入的配置。\n请从 Surfshark 手动设置中导入 ZIP 压缩包。",
    "Download Harmoney Pro": "下载 Harmoney Pro",
    "More protocols and connection options":
        "\u66f4\u591a\u534f\u8bae\u548c\u8fde\u63a5\u9009\u9879",
    "The Harmoney Pro download link is not available yet.":
        "\u0048\u0061\u0072\u006d\u006f\u006e\u0065\u0079\u0020\u0050\u0072\u006f\u0020\u4e0b\u8f7d\u94fe\u63a5\u6682\u4e0d\u53ef\u7528\u3002",
    "Select connection service": "选择连接服务",
    "Connection service": "连接服务",
    "Personal subscriptions": "个人订阅",
    "Smart routing and personal subscriptions": "智能路由和个人订阅",
    "Lightweight Firefox VPN tunnel": "轻量级 Firefox VPN 隧道",
    "Rules apply to the active VPN route. UDP relay is not complete yet; apps requiring UDP may not be fully bypassed.":
        "规则适用于当前 VPN 路由。UDP 中继尚未完成；需要 UDP 的应用可能无法完全绕过 VPN。",
    "Hotspot sharing preference saved.": "热点共享设置已保存。",
    "Save preference": "保存设置",
    "Xray routes selected IPv4/IPv6 ranges and the bundled Iranian domain list directly. Reconnect after changing rules.":
        "Xray 会直接路由选定的 IPv4/IPv6 网段和内置的伊朗域名列表。更改规则后请重新连接。",
    "remaining": "剩余",
    "Auditing…": "正在审核…",
    "Checking account…": "正在检查账户…",
    "Checking secure credential vault…": "正在检查安全凭据库…",
    "Checking…": "正在检查…",
    "Disconnect is still being processed…": "断开连接请求仍在处理中…",
    "Disconnect requested…": "已请求断开连接…",
    "Disconnecting…": "正在断开连接…",
    "Importing…": "正在导入…",
    "Signing in…": "正在登录…",
    "Starting connection…": "正在启动连接…",
    "Updating…": "正在更新…",
    "Working…": "正在处理中…",
    "Establishing secure tunnel…": "正在建立安全隧道…",
  },
};

const Map<String, Map<String, String>> inlineTextTemplateTranslations = {
  "fa": {
    "Advanced System Routing on QZXVAR0QZX":
        "مسیریابی پیشرفته سیستم در QZXVAR0QZX",
    "Configure Device: QZXVAR0QZX": "پیکربندی دستگاه: QZXVAR0QZX",
    "Connected Devices (QZXVAR0QZX)": "دستگاه های متصل (QZXVAR0QZX)",
    "Could not add application: QZXVAR0QZX": "برنامه اضافه نشد: QZXVAR0QZX",
    "Could not load app bypass settings: QZXVAR0QZX":
        "تنظیمات دور زدن برنامه بارگیری نشد: QZXVAR0QZX",
    "Could not load servers: QZXVAR0QZX":
        "بارگیری سرورها ممکن نیست: QZXVAR0QZX",
    "Could not remove application: QZXVAR0QZX": "برنامه حذف نشد: QZXVAR0QZX",
    "Could not update app bypass: QZXVAR0QZX":
        "دور زدن برنامه به‌روزرسانی نشد: QZXVAR0QZX",
    "Country Bypass: QZXVAR0QZX": "دور زدن کشور: QZXVAR0QZX",
    "Disconnect failed: QZXVAR0QZX": "قطع اتصال انجام نشد: QZXVAR0QZX",
    "Emergency Stop error: QZXVAR0QZX": "خطای توقف اضطراری: QZXVAR0QZX",
    "Error: QZXVAR0QZX": "خطا: QZXVAR0QZX",
    "Export failed: QZXVAR0QZX": "صادر نشد: QZXVAR0QZX",
    "Failed to delete: QZXVAR0QZX": "حذف نشد: QZXVAR0QZX",
    "Failed to update Always-on VPN: QZXVAR0QZX":
        "به روز رسانی همیشه روشن انجام نشد VPN: QZXVAR0QZX",
    "Failed to update app rule: QZXVAR0QZX":
        "به روز رسانی قانون برنامه ناموفق بود: QZXVAR0QZX",
    "Failed to update autostart: QZXVAR0QZX":
        "به روز رسانی شروع خودکار ناموفق بود: QZXVAR0QZX",
    "Imported QZXVAR0QZX WireGuard and QZXVAR1QZX OpenVPN profiles securely.":
        "پروفایل های QZXVAR0QZX WireGuard و QZXVAR1QZX OpenVPN را به صورت ایمن وارد کنید. نسخه",
    "Latency test failed: QZXVAR0QZX": "ناموفق بود: QZXVAR0QZX",
    "No imported QZXVAR0QZX profile matches the selected Surfshark locations.":
        "هیچ نمایه QZXVAR0QZX وارد شده ای با مکان های انتخابی Surfshark مطابقت ندارد.",
    "Not supported on QZXVAR0QZX": "در QZXVAR0QZX",
    "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX":
        "پینگ: QZXVAR0QZXms · جیتر: QZXVAR1QZXms · QZXVAR2QZX",
    "Policy: QZXVAR0QZX · Today: QZXVAR1QZX":
        ": QZXVAR0QZX · امروز: QZXVAR1QZX",
    "QZXVAR0QZX CIDRs": "QZXVAR0QZX CIDRها",
    "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)":
        "QZXVAR0QZX Mbps (پینگ QZXVAR1QZXms)",
    "QZXVAR0QZX added": "QZXVAR0QZX اضافه شده",
    "QZXVAR0QZX countries selected (QZXVAR1QZX CIDRs)":
        "کشورهای QZXVAR0QZX انتخاب شدند (QZXVAR1QZX CIDRs)",
    "QZXVAR0QZX left": "QZXVAR0QZX سمت چپ",
    "QZXVAR0QZX locations": "QZXVAR0QZX مکان‌های",
    "QZXVAR0QZXms": "QZXVAR0QZXms",
    "Saved to QZXVAR0QZX": "ذخیره شد در QZXVAR0QZX",
    "Status: QZXVAR0QZX · Latency: QZXVAR1QZX":
        ": QZXVAR0QZX · تاخیر: QZXVAR1QZX",
    "Unjam failed: QZXVAR0QZX": "Unjam انجام نشد: QZXVAR0QZX",
    "Updated: QZXVAR0QZX": "به روز شد: QZXVAR0QZX",
    "Version: QZXVAR0QZX": ": QZXVAR0QZX",
    "↑ QZXVAR0QZX Mbps": "↑ QZXVAR0QZX Mbps",
    "↓ QZXVAR0QZX Mbps": "↓ QZXVAR0QZX Mbps",
    "شناسه سخت‌افزاری از QZXVAR0QZX (QZXVAR1QZX) دریافت شد.":
        "شناسه سخت‌افزاری از QZXVAR0QZX (QZXVAR1QZX) دریافت شد.",
  },
  "ar": {
    "Advanced System Routing on QZXVAR0QZX":
        "توجيه النظام المتقدم على QZXVAR0QZX",
    "Configure Device: QZXVAR0QZX": "تكوين الجهاز: QZXVAR0QZX",
    "Connected Devices (QZXVAR0QZX)": "الأجهزة المتصلة (QZXVAR0QZX)",
    "Could not add application: QZXVAR0QZX": "تعذر إضافة التطبيق: QZXVAR0QZX",
    "Could not load app bypass settings: QZXVAR0QZX":
        "تعذر تحميل إعدادات تجاوز التطبيق: QZXVAR0QZX",
    "Could not load servers: QZXVAR0QZX": "تعذر تحميل الخوادم: QZXVAR0QZX",
    "Could not remove application: QZXVAR0QZX":
        "تعذر إزالة التطبيق: QZXVAR0QZX",
    "Could not update app bypass: QZXVAR0QZX":
        "تعذر تحديث تجاوز التطبيق: QZXVAR0QZX",
    "Country Bypass: QZXVAR0QZX": "تجاوز البلد: QZXVAR0QZX",
    "Disconnect failed: QZXVAR0QZX": "فشل قطع الاتصال: QZXVAR0QZX",
    "Emergency Stop error: QZXVAR0QZX": ": QZXVAR0QZX",
    "Error: QZXVAR0QZX": "خطأ: QZXVAR0QZX",
    "Export failed: QZXVAR0QZX": "فشل التصدير: QZXVAR0QZX",
    "Failed to delete: QZXVAR0QZX": "فشل الحذف: QZXVAR0QZX",
    "Failed to update Always-on VPN: QZXVAR0QZX":
        "فشل في تحديث VPN الذي يعمل دائمًا: QZXVAR0QZX",
    "Failed to update app rule: QZXVAR0QZX":
        "فشل تحديث قاعدة التطبيق: QZXVAR0QZX",
    "Failed to update autostart: QZXVAR0QZX":
        "فشل تحديث التشغيل التلقائي: QZXVAR0QZX",
    "Imported QZXVAR0QZX WireGuard and QZXVAR1QZX OpenVPN profiles securely.":
        "ملفات تعريف QZXVAR0QZX WireGuard وQZXVAR1QZX OpenVPN بشكل آمن.",
    "Latency test failed: QZXVAR0QZX": "فشل اختبار زمن الاستجابة: QZXVAR0QZX",
    "No imported QZXVAR0QZX profile matches the selected Surfshark locations.":
        "لا يوجد ملف تعريف QZXVAR0QZX مستورد يطابق مواقع Surfshark المحددة.",
    "Not supported on QZXVAR0QZX": "غير مدعوم على QZXVAR0QZX",
    "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX":
        "Ping: QZXVAR0QZXms · غضب: QZXVAR1QZXms · QZXVAR2QZX",
    "Policy: QZXVAR0QZX · Today: QZXVAR1QZX":
        ": QZXVAR0QZX · اليوم: QZXVAR1QZX",
    "QZXVAR0QZX CIDRs": "QZXVAR0QZX CIDRs",
    "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)":
        "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)",
    "QZXVAR0QZX added": "تمت إضافة QZXVAR0QZX",
    "QZXVAR0QZX countries selected (QZXVAR1QZX CIDRs)":
        "دول QZXVAR0QZX المحددة (QZXVAR1QZX CIDRs)",
    "QZXVAR0QZX left": "QZXVAR0QZX اليسار",
    "QZXVAR0QZX locations": "مواقع QZXVAR0QZX",
    "QZXVAR0QZXms": "QZXVAR0QZXms",
    "Saved to QZXVAR0QZX": "تم الحفظ في QZXVAR0QZX",
    "Status: QZXVAR0QZX · Latency: QZXVAR1QZX":
        "الحالة: QZXVAR0QZX · زمن الوصول: QZXVAR1QZX",
    "Unjam failed: QZXVAR0QZX": "فشل Unjam: QZXVAR0QZX",
    "Updated: QZXVAR0QZX": "تم التحديث: QZXVAR0QZX",
    "Version: QZXVAR0QZX": "الإصدار: QZXVAR0QZX",
    "شناسه سخت‌افزاری از QZXVAR0QZX (QZXVAR1QZX) دریافت شد.":
        "تم استلام معرف الجهاز من QZXVAR0QZX (QZXVAR1QZX).",
    "↑ QZXVAR0QZX Mbps": "↑ QZXVAR0QZX Mbps",
    "↓ QZXVAR0QZX Mbps": "↓ QZXVAR0QZX Mbps",
  },
  "tr": {
    "Advanced System Routing on QZXVAR0QZX":
        "QZXVAR0QZX'te Gelişmiş Sistem Yönlendirmesi",
    "Configure Device: QZXVAR0QZX": "Cihazı Yapılandırma: QZXVAR0QZX",
    "Connected Devices (QZXVAR0QZX)": "Bağlı Cihazlar (QZXVAR0QZX)",
    "Could not add application: QZXVAR0QZX": "Uygulama eklenemedi: QZXVAR0QZX",
    "Could not load app bypass settings: QZXVAR0QZX":
        "Uygulama atlama ayarları yüklenemedi: QZXVAR0QZX",
    "Could not load servers: QZXVAR0QZX": "Sunucular yüklenemedi: QZXVAR0QZX",
    "Could not remove application: QZXVAR0QZX":
        "Uygulama kaldırılamadı: QZXVAR0QZX",
    "Could not update app bypass: QZXVAR0QZX":
        "Uygulama atlama güncellenemedi: QZXVAR0QZX",
    "Country Bypass: QZXVAR0QZX": "Ülke Baypas: QZXVAR0QZX",
    "Disconnect failed: QZXVAR0QZX": "Bağlantı kesilemedi: QZXVAR0QZX",
    "Emergency Stop error: QZXVAR0QZX": "Acil Durdurma hatası: QZXVAR0QZX",
    "Error: QZXVAR0QZX": "Hata: QZXVAR0QZX",
    "Export failed: QZXVAR0QZX": "Dışa aktarma başarısız oldu: QZXVAR0QZX",
    "Failed to delete: QZXVAR0QZX": "Silinemedi: QZXVAR0QZX",
    "Failed to update Always-on VPN: QZXVAR0QZX":
        "Daima açık VPN güncellenemedi: QZXVAR0QZX",
    "Failed to update app rule: QZXVAR0QZX":
        "Uygulama kuralı güncellenemedi: QZXVAR0QZX",
    "Failed to update autostart: QZXVAR0QZX":
        "Otomatik başlatma güncellenemedi: QZXVAR0QZX",
    "Imported QZXVAR0QZX WireGuard and QZXVAR1QZX OpenVPN profiles securely.":
        "QZXVAR0QZX WireGuard ve QZXVAR1QZX OpenVPN profillerini güvenli bir şekilde içe aktarın.",
    "Latency test failed: QZXVAR0QZX":
        "Gecikme testi başarısız oldu: QZXVAR0QZX",
    "No imported QZXVAR0QZX profile matches the selected Surfshark locations.":
        "Seçilen Surfshark konumlarıyla eşleşen içe aktarılan QZXVAR0QZX profili yok.",
    "Not supported on QZXVAR0QZX": "QZXVAR0QZX'te desteklenmez",
    "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX":
        "Ping: QZXVAR0QZXms · Titreşim: QZXVAR1QZXms · QZXVAR2QZX",
    "Policy: QZXVAR0QZX · Today: QZXVAR1QZX":
        "Politikası: QZXVAR0QZX · Bugün: QZXVAR1QZX",
    "QZXVAR0QZX CIDRs": "QZXVAR0QZX CIDRs",
    "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)":
        "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)",
    "QZXVAR0QZX added": "QZXVAR0QZX eklendi",
    "QZXVAR0QZX countries selected (QZXVAR1QZX CIDRs)":
        "QZXVAR0QZX seçilen ülkeler (QZXVAR1QZX CIDRs)",
    "QZXVAR0QZX left": "QZXVAR0QZX kaldı",
    "QZXVAR0QZX locations": "QZXVAR0QZX konumları",
    "QZXVAR0QZXms": "QZXVAR0QZXms",
    "Saved to QZXVAR0QZX": "QZXVAR0QZX'e kaydedildi",
    "Status: QZXVAR0QZX · Latency: QZXVAR1QZX":
        "Durum: QZXVAR0QZX · Gecikme: QZXVAR1QZX",
    "Unjam failed: QZXVAR0QZX": "Sıkışmayı giderme başarısız oldu: QZXVAR0QZX",
    "Updated: QZXVAR0QZX": "Güncellendi: QZXVAR0QZX",
    "Version: QZXVAR0QZX": "Sürümü: QZXVAR0QZX",
    "شناسه سخت‌افزاری از QZXVAR0QZX (QZXVAR1QZX) دریافت شد.":
        "QZXVAR0QZX'ten (QZXVAR1QZX) donanım kimliği alındı.",
    "↑ QZXVAR0QZX Mbps": "↑ QZXVAR0QZX Mbps",
    "↓ QZXVAR0QZX Mbps": "↓ QZXVAR0QZX Mbps",
  },
  "es": {
    "Advanced System Routing on QZXVAR0QZX":
        "Enrutamiento avanzado del sistema en QZXVAR0QZX",
    "Configure Device: QZXVAR0QZX": "Configurar dispositivo: QZXVAR0QZX",
    "Connected Devices (QZXVAR0QZX)": "Dispositivos conectados (QZXVAR0QZX)",
    "Could not add application: QZXVAR0QZX":
        "No se pudo agregar la aplicación: QZXVAR0QZX",
    "Could not load app bypass settings: QZXVAR0QZX":
        "No se pudo cargar la configuración de omisión de la aplicación: QZXVAR0QZX",
    "Could not load servers: QZXVAR0QZX":
        "No se pudieron cargar los servidores: QZXVAR0QZX",
    "Could not remove application: QZXVAR0QZX":
        "No se pudo eliminar la aplicación: QZXVAR0QZX",
    "Could not update app bypass: QZXVAR0QZX":
        "No se pudo actualizar la omisión de la aplicación: QZXVAR0QZX",
    "Country Bypass: QZXVAR0QZX": "Omitir país: QZXVAR0QZX",
    "Disconnect failed: QZXVAR0QZX": "Error de desconexión: QZXVAR0QZX",
    "Emergency Stop error: QZXVAR0QZX":
        "Error de parada de emergencia: QZXVAR0QZX",
    "Error: QZXVAR0QZX": "Error: QZXVAR0QZX",
    "Export failed: QZXVAR0QZX": "Error al exportar: QZXVAR0QZX",
    "Failed to delete: QZXVAR0QZX": "No se pudo eliminar: QZXVAR0QZX",
    "Failed to update Always-on VPN: QZXVAR0QZX":
        "No se pudo actualizar el VPN siempre activo: QZXVAR0QZX",
    "Failed to update app rule: QZXVAR0QZX":
        "No se pudo actualizar la regla de la aplicación: QZXVAR0QZX",
    "Failed to update autostart: QZXVAR0QZX":
        "No se pudo actualizar el inicio automático: QZXVAR0QZX",
    "Imported QZXVAR0QZX WireGuard and QZXVAR1QZX OpenVPN profiles securely.":
        "Importó perfiles QZXVAR0QZX WireGuard y QZXVAR1QZX OpenVPN de forma segura.",
    "Latency test failed: QZXVAR0QZX":
        "Error en la prueba de latencia: QZXVAR0QZX",
    "No imported QZXVAR0QZX profile matches the selected Surfshark locations.":
        "Ningún perfil QZXVAR0QZX importado coincide con las ubicaciones Surfshark seleccionadas.",
    "Not supported on QZXVAR0QZX": "No compatible con QZXVAR0QZX",
    "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX":
        "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX",
    "Policy: QZXVAR0QZX · Today: QZXVAR1QZX": ": QZXVAR0QZX · Hoy: QZXVAR1QZX",
    "QZXVAR0QZX CIDRs": "QZXVAR0QZX CIDRs",
    "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)":
        "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)",
    "QZXVAR0QZX added": "QZXVAR0QZX agregado",
    "QZXVAR0QZX countries selected (QZXVAR1QZX CIDRs)":
        "QZXVAR0QZX países seleccionados (QZXVAR1QZX CIDRs)",
    "QZXVAR0QZX left": "QZXVAR0QZX izquierda",
    "QZXVAR0QZX locations": "QZXVAR0QZX ubicaciones",
    "QZXVAR0QZXms": "QZXVAR0QZXms",
    "Saved to QZXVAR0QZX": "Guardado en QZXVAR0QZX",
    "Status: QZXVAR0QZX · Latency: QZXVAR1QZX":
        "Estado: QZXVAR0QZX · Latencia: QZXVAR1QZX",
    "Unjam failed: QZXVAR0QZX": "Error al desbloquear: QZXVAR0QZX",
    "Updated: QZXVAR0QZX": "Actualizado: QZXVAR0QZX",
    "Version: QZXVAR0QZX": "Versión: QZXVAR0QZX",
    "شناسه سخت‌افزاری از QZXVAR0QZX (QZXVAR1QZX) دریافت شد.":
        "ID de hardware recibido de QZXVAR0QZX (QZXVAR1QZX).",
    "↑ QZXVAR0QZX Mbps": "↑ QZXVAR0QZX Mbps",
    "↓ QZXVAR0QZX Mbps": "↓ QZXVAR0QZX Mbps",
  },
  "fr": {
    "Advanced System Routing on QZXVAR0QZX":
        "Routage système avancé sur QZXVAR0QZX",
    "Configure Device: QZXVAR0QZX": "Configurer le périphérique : QZXVAR0QZX",
    "Connected Devices (QZXVAR0QZX)": "Appareils connectés (QZXVAR0QZX)",
    "Could not add application: QZXVAR0QZX":
        "Impossible d'ajouter l'application : QZXVAR0QZX",
    "Could not load app bypass settings: QZXVAR0QZX":
        "Impossible de charger les paramètres de contournement de l'application : QZXVAR0QZX",
    "Could not load servers: QZXVAR0QZX":
        "Impossible de charger les serveurs : QZXVAR0QZX",
    "Could not remove application: QZXVAR0QZX":
        "Impossible de supprimer l'application : QZXVAR0QZX",
    "Could not update app bypass: QZXVAR0QZX":
        "Impossible de mettre à jour le contournement de l'application : QZXVAR0QZX",
    "Country Bypass: QZXVAR0QZX": "Contournement du pays : QZXVAR0QZX",
    "Disconnect failed: QZXVAR0QZX": "Échec de la déconnexion : QZXVAR0QZX",
    "Emergency Stop error: QZXVAR0QZX": "Erreur d'arrêt d'urgence : QZXVAR0QZX",
    "Error: QZXVAR0QZX": "Erreur : QZXVAR0QZX",
    "Export failed: QZXVAR0QZX": "Échec de l'exportation : QZXVAR0QZX",
    "Failed to delete: QZXVAR0QZX": "Échec de la suppression : QZXVAR0QZX",
    "Failed to update Always-on VPN: QZXVAR0QZX":
        "Échec de la mise à jour du VPN toujours actif : QZXVAR0QZX",
    "Failed to update app rule: QZXVAR0QZX":
        "Échec de la mise à jour de la règle d'application : QZXVAR0QZX",
    "Failed to update autostart: QZXVAR0QZX":
        "Échec de la mise à jour du démarrage automatique : QZXVAR0QZX",
    "Imported QZXVAR0QZX WireGuard and QZXVAR1QZX OpenVPN profiles securely.":
        "Profils QZXVAR0QZX WireGuard et QZXVAR1QZX OpenVPN importés en toute sécurité.",
    "Latency test failed: QZXVAR0QZX": "Échec du test de latence : QZXVAR0QZX",
    "No imported QZXVAR0QZX profile matches the selected Surfshark locations.":
        "Aucun profil QZXVAR0QZX importé ne correspond aux emplacements Surfshark sélectionnés.",
    "Not supported on QZXVAR0QZX": "Non pris en charge sur QZXVAR0QZX",
    "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX":
        "Ping : QZXVAR0QZXms · Gigue : QZXVAR1QZXms · QZXVAR2QZX",
    "Policy: QZXVAR0QZX · Today: QZXVAR1QZX":
        ": QZXVAR0QZX · Aujourd'hui : QZXVAR1QZX",
    "QZXVAR0QZX CIDRs": "QZXVAR0QZX CIDRs",
    "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)":
        "QZXVAR0QZX Mbps (ping QZXVAR1QZXms)",
    "QZXVAR0QZX added": "QZXVAR0QZX ajouté",
    "QZXVAR0QZX countries selected (QZXVAR1QZX CIDRs)":
        "QZXVAR0QZX pays sélectionnés (QZXVAR1QZX CIDRs)",
    "QZXVAR0QZX left": "QZXVAR0QZX gauche",
    "QZXVAR0QZX locations": "QZXVAR0QZX emplacements",
    "QZXVAR0QZXms": "QZXVAR0QZXms",
    "Saved to QZXVAR0QZX": "Enregistré dans QZXVAR0QZX",
    "Status: QZXVAR0QZX · Latency: QZXVAR1QZX":
        "Statut : QZXVAR0QZX · Latence : QZXVAR1QZX",
    "Unjam failed: QZXVAR0QZX": "Échec du déblocage : QZXVAR0QZX",
    "Updated: QZXVAR0QZX": "Mise à jour : QZXVAR0QZX",
    "Version: QZXVAR0QZX": "Version : QZXVAR0QZX",
    "شناسه سخت‌افزاری از QZXVAR0QZX (QZXVAR1QZX) دریافت شد.":
        "ID matériel reçu de QZXVAR0QZX (QZXVAR1QZX).",
    "↑ QZXVAR0QZX Mbps": "↑ QZXVAR0QZX Mbps",
    "↓ QZXVAR0QZX Mbps": "↓ QZXVAR0QZX Mbps",
  },
  "de": {
    "Advanced System Routing on QZXVAR0QZX":
        "Erweitertes Systemrouting auf QZXVAR0QZX",
    "Configure Device: QZXVAR0QZX": "Gerät konfigurieren: QZXVAR0QZX",
    "Connected Devices (QZXVAR0QZX)": "Verbundene Geräte (QZXVAR0QZX)",
    "Could not add application: QZXVAR0QZX":
        "Anwendung konnte nicht hinzugefügt werden: QZXVAR0QZX",
    "Could not load app bypass settings: QZXVAR0QZX":
        "App-Umgehungseinstellungen konnten nicht geladen werden: QZXVAR0QZX",
    "Could not load servers: QZXVAR0QZX":
        "Server konnten nicht geladen werden: QZXVAR0QZX",
    "Could not remove application: QZXVAR0QZX":
        "Anwendung konnte nicht entfernt werden: QZXVAR0QZX",
    "Could not update app bypass: QZXVAR0QZX":
        "App-Umgehung konnte nicht aktualisiert werden: QZXVAR0QZX",
    "Country Bypass: QZXVAR0QZX": "Länderumgehung: QZXVAR0QZX",
    "Disconnect failed: QZXVAR0QZX":
        "Verbindungstrennung fehlgeschlagen: QZXVAR0QZX",
    "Emergency Stop error: QZXVAR0QZX": "Not-Aus-Fehler: QZXVAR0QZX",
    "Error: QZXVAR0QZX": "Fehler: QZXVAR0QZX",
    "Export failed: QZXVAR0QZX": "Export fehlgeschlagen: QZXVAR0QZX",
    "Failed to delete: QZXVAR0QZX": "Fehler beim Löschen: QZXVAR0QZX",
    "Failed to update Always-on VPN: QZXVAR0QZX":
        "Aktualisierung von Always-on VPN fehlgeschlagen: QZXVAR0QZX",
    "Failed to update app rule: QZXVAR0QZX":
        "App-Regel konnte nicht aktualisiert werden: QZXVAR0QZX",
    "Failed to update autostart: QZXVAR0QZX":
        "Aktualisierung des Autostarts fehlgeschlagen: QZXVAR0QZX",
    "Imported QZXVAR0QZX WireGuard and QZXVAR1QZX OpenVPN profiles securely.":
        ". Importieren Sie die Profile QZXVAR0QZX WireGuard und QZXVAR1QZX OpenVPN sicher.",
    "Latency test failed: QZXVAR0QZX": "Latenztest fehlgeschlagen: QZXVAR0QZX",
    "No imported QZXVAR0QZX profile matches the selected Surfshark locations.":
        "Kein importiertes QZXVAR0QZX-Profil entspricht den ausgewählten Surfshark-Speicherorten.",
    "Not supported on QZXVAR0QZX": "Nicht unterstützt auf QZXVAR0QZX",
    "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX":
        "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX",
    "Policy: QZXVAR0QZX · Today: QZXVAR1QZX":
        "Richtlinie: QZXVAR0QZX · Heute: QZXVAR1QZX",
    "QZXVAR0QZX CIDRs": "QZXVAR0QZX CIDRs",
    "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)":
        "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)",
    "QZXVAR0QZX added": "umgehen. QZXVAR0QZX hat",
    "QZXVAR0QZX countries selected (QZXVAR1QZX CIDRs)":
        "QZXVAR0QZX Länder ausgewählt (QZXVAR1QZX CIDRs)",
    "QZXVAR0QZX left": "QZXVAR0QZX links",
    "QZXVAR0QZX locations": "QZXVAR0QZX Standorte",
    "QZXVAR0QZXms": "QZXVAR0QZXms",
    "Saved to QZXVAR0QZX": "Gespeichert unter QZXVAR0QZX",
    "Status: QZXVAR0QZX · Latency: QZXVAR1QZX":
        "Status: QZXVAR0QZX · Latenz: QZXVAR1QZX",
    "Unjam failed: QZXVAR0QZX": "Entstörung fehlgeschlagen: QZXVAR0QZX",
    "Updated: QZXVAR0QZX": "Aktualisiert: QZXVAR0QZX",
    "Version: QZXVAR0QZX": "Version: QZXVAR0QZX",
    "شناسه سخت‌افزاری از QZXVAR0QZX (QZXVAR1QZX) دریافت شد.":
        "Hardware-ID von QZXVAR0QZX empfangen (QZXVAR1QZX).",
    "↑ QZXVAR0QZX Mbps": "↑ QZXVAR0QZX Mbps",
    "↓ QZXVAR0QZX Mbps": "↓ QZXVAR0QZX Mbps",
  },
  "it": {
    "Advanced System Routing on QZXVAR0QZX":
        "Routing di sistema avanzato su QZXVAR0QZX",
    "Configure Device: QZXVAR0QZX": "Configura dispositivo: QZXVAR0QZX",
    "Connected Devices (QZXVAR0QZX)": "Dispositivi connessi (QZXVAR0QZX)",
    "Could not add application: QZXVAR0QZX":
        "Impossibile aggiungere l'applicazione: QZXVAR0QZX",
    "Could not load app bypass settings: QZXVAR0QZX":
        "Impossibile caricare le impostazioni di bypass dell'app: QZXVAR0QZX",
    "Could not load servers: QZXVAR0QZX":
        "Impossibile caricare i server: QZXVAR0QZX",
    "Could not remove application: QZXVAR0QZX":
        "Impossibile rimuovere l'applicazione: QZXVAR0QZX",
    "Could not update app bypass: QZXVAR0QZX":
        "Impossibile aggiornare il bypass dell'app: QZXVAR0QZX",
    "Country Bypass: QZXVAR0QZX": "Esclusione paese: QZXVAR0QZX",
    "Disconnect failed: QZXVAR0QZX": "Disconnessione non riuscita: QZXVAR0QZX",
    "Emergency Stop error: QZXVAR0QZX":
        "Errore arresto di emergenza: QZXVAR0QZX",
    "Error: QZXVAR0QZX": "Errore: QZXVAR0QZX",
    "Export failed: QZXVAR0QZX": "Esportazione non riuscita: QZXVAR0QZX",
    "Failed to delete: QZXVAR0QZX": "Impossibile eliminare: QZXVAR0QZX",
    "Failed to update Always-on VPN: QZXVAR0QZX":
        "Impossibile aggiornare Sempre attivo VPN: QZXVAR0QZX",
    "Failed to update app rule: QZXVAR0QZX":
        "Impossibile aggiornare la regola dell'app: QZXVAR0QZX",
    "Failed to update autostart: QZXVAR0QZX":
        "Impossibile aggiornare l'avvio automatico: QZXVAR0QZX",
    "Imported QZXVAR0QZX WireGuard and QZXVAR1QZX OpenVPN profiles securely.":
        "Profili QZXVAR0QZX WireGuard e QZXVAR1QZX OpenVPN importati in modo sicuro.",
    "Latency test failed: QZXVAR0QZX":
        "Test di latenza non riuscito: QZXVAR0QZX",
    "No imported QZXVAR0QZX profile matches the selected Surfshark locations.":
        "Nessun profilo QZXVAR0QZX importato corrisponde alle posizioni Surfshark selezionate.",
    "Not supported on QZXVAR0QZX": "Non supportato su QZXVAR0QZX",
    "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX":
        "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX",
    "Policy: QZXVAR0QZX · Today: QZXVAR1QZX":
        "Politica: QZXVAR0QZX · Oggi: QZXVAR1QZX",
    "QZXVAR0QZX CIDRs": "QZXVAR0QZX CIDRs",
    "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)":
        "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)",
    "QZXVAR0QZX added": "QZXVAR0QZX aggiunto",
    "QZXVAR0QZX countries selected (QZXVAR1QZX CIDRs)":
        "QZXVAR0QZX paesi selezionati (QZXVAR1QZX CIDRs)",
    "QZXVAR0QZX left": "QZXVAR0QZX sinistra",
    "QZXVAR0QZX locations": "QZXVAR0QZX posizioni",
    "QZXVAR0QZXms": "QZXVAR0QZXms",
    "Saved to QZXVAR0QZX": "Salvato in QZXVAR0QZX",
    "Status: QZXVAR0QZX · Latency: QZXVAR1QZX":
        "Stato: QZXVAR0QZX · Latenza: QZXVAR1QZX",
    "Unjam failed: QZXVAR0QZX":
        "Rimozione dell'inceppamento non riuscita: QZXVAR0QZX",
    "Updated: QZXVAR0QZX": "Aggiornato: QZXVAR0QZX",
    "Version: QZXVAR0QZX": "Versione: QZXVAR0QZX",
    "شناسه سخت‌افزاری از QZXVAR0QZX (QZXVAR1QZX) دریافت شد.":
        "ID hardware ricevuto da QZXVAR0QZX (QZXVAR1QZX).",
    "↑ QZXVAR0QZX Mbps": "↑ QZXVAR0QZX Mbps",
    "↓ QZXVAR0QZX Mbps": "↓ QZXVAR0QZX Mbps",
  },
  "ru": {
    "Advanced System Routing on QZXVAR0QZX":
        "Расширенная системная маршрутизация на QZXVAR0QZX",
    "Configure Device: QZXVAR0QZX": "Настройка устройства: QZXVAR0QZX",
    "Connected Devices (QZXVAR0QZX)": "Подключенные устройства (QZXVAR0QZX)",
    "Could not add application: QZXVAR0QZX":
        "Не удалось добавить приложение: QZXVAR0QZX",
    "Could not load app bypass settings: QZXVAR0QZX":
        "Не удалось загрузить настройки обхода приложения: QZXVAR0QZX",
    "Could not load servers: QZXVAR0QZX":
        "Не удалось загрузить серверы: QZXVAR0QZX",
    "Could not remove application: QZXVAR0QZX":
        "Не удалось удалить приложение: QZXVAR0QZX",
    "Could not update app bypass: QZXVAR0QZX":
        "Не удалось обновить обход приложения: QZXVAR0QZX",
    "Country Bypass: QZXVAR0QZX": "Обход страны: QZXVAR0QZX",
    "Disconnect failed: QZXVAR0QZX": "Не удалось отключиться: QZXVAR0QZX",
    "Emergency Stop error: QZXVAR0QZX":
        "Ошибка аварийного останова: QZXVAR0QZX",
    "Error: QZXVAR0QZX": "Ошибка: QZXVAR0QZX",
    "Export failed: QZXVAR0QZX": "Не удалось экспортировать: QZXVAR0QZX",
    "Failed to delete: QZXVAR0QZX": "Не удалось удалить: QZXVAR0QZX",
    "Failed to update Always-on VPN: QZXVAR0QZX":
        "Не удалось обновить Always-on VPN: QZXVAR0QZX",
    "Failed to update app rule: QZXVAR0QZX":
        "Не удалось обновить правило приложения: QZXVAR0QZX",
    "Failed to update autostart: QZXVAR0QZX":
        "Не удалось обновить автозапуск: QZXVAR0QZX",
    "Imported QZXVAR0QZX WireGuard and QZXVAR1QZX OpenVPN profiles securely.":
        "Безопасно импортируйте профили QZXVAR0QZX WireGuard и QZXVAR1QZX OpenVPN.",
    "Latency test failed: QZXVAR0QZX":
        "Проверка задержки не удалась: QZXVAR0QZX",
    "No imported QZXVAR0QZX profile matches the selected Surfshark locations.":
        "Ни один импортированный профиль QZXVAR0QZX не ​​соответствует выбранным местоположениям Surfshark.",
    "Not supported on QZXVAR0QZX": "Не поддерживается на QZXVAR0QZX",
    "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX":
        "Пинг: QZXVAR0QZXms · Джиттер: QZXVAR1QZXms · QZXVAR2QZX",
    "Policy: QZXVAR0QZX · Today: QZXVAR1QZX":
        ": QZXVAR0QZX · Сегодня: QZXVAR1QZX",
    "QZXVAR0QZX CIDRs": "QZXVAR0QZX CIDRs",
    "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)":
        "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)",
    "QZXVAR0QZX added": "QZXVAR0QZX добавлены",
    "QZXVAR0QZX countries selected (QZXVAR1QZX CIDRs)":
        "QZXVAR0QZX выбраны страны (QZXVAR1QZX CIDRs)",
    "QZXVAR0QZX left": "QZXVAR0QZX осталось",
    "QZXVAR0QZX locations": "QZXVAR0QZX местоположения",
    "QZXVAR0QZXms": "QZXVAR0QZXms",
    "Saved to QZXVAR0QZX": "Сохранено в QZXVAR0QZX",
    "Status: QZXVAR0QZX · Latency: QZXVAR1QZX":
        "Статус: QZXVAR0QZX · Задержка: QZXVAR1QZX",
    "Unjam failed: QZXVAR0QZX": "Не удалось разблокировать: QZXVAR0QZX",
    "Updated: QZXVAR0QZX": "Обновлено: QZXVAR0QZX",
    "Version: QZXVAR0QZX": "Версия: QZXVAR0QZX",
    "شناسه سخت‌افزاری از QZXVAR0QZX (QZXVAR1QZX) دریافت شد.":
        "Получен идентификатор оборудования от QZXVAR0QZX (QZXVAR1QZX).",
    "↑ QZXVAR0QZX Mbps": "↑ QZXVAR0QZX Mbps",
    "↓ QZXVAR0QZX Mbps": "↓ QZXVAR0QZX Mbps",
  },
  "zh": {
    "Advanced System Routing on QZXVAR0QZX": "QZXVAR0QZX 上的高级系统路由",
    "Configure Device: QZXVAR0QZX": "配置设备： QZXVAR0QZX",
    "Connected Devices (QZXVAR0QZX)": "连接的设备 (QZXVAR0QZX)",
    "Could not add application: QZXVAR0QZX": "无法添加应用程序：QZXVAR0QZX",
    "Could not load app bypass settings: QZXVAR0QZX": "无法加载应用程序绕过设置：QZXVAR0QZX",
    "Could not load servers: QZXVAR0QZX": "无法加载服务器：QZXVAR0QZX",
    "Could not remove application: QZXVAR0QZX": "无法删除应用程序：QZXVAR0QZX",
    "Could not update app bypass: QZXVAR0QZX": "无法更新应用程序绕过：QZXVAR0QZX",
    "Country Bypass: QZXVAR0QZX": "国家/地区绕过：QZXVAR0QZX",
    "Disconnect failed: QZXVAR0QZX": "断开连接失败：QZXVAR0QZX",
    "Emergency Stop error: QZXVAR0QZX": "紧急停止错误： QZXVAR0QZX",
    "Error: QZXVAR0QZX": "错误：QZXVAR0QZX",
    "Export failed: QZXVAR0QZX": "导出失败：QZXVAR0QZX",
    "Failed to delete: QZXVAR0QZX": "删除失败：QZXVAR0QZX",
    "Failed to update Always-on VPN: QZXVAR0QZX": "更新常亮 VPN 失败：QZXVAR0QZX",
    "Failed to update app rule: QZXVAR0QZX": "无法更新应用程序规则： QZXVAR0QZX",
    "Failed to update autostart: QZXVAR0QZX": "更新自动启动失败：QZXVAR0QZX",
    "Imported QZXVAR0QZX WireGuard and QZXVAR1QZX OpenVPN profiles securely.":
        "安全导入 QZXVAR0QZX WireGuard 和 QZXVAR1QZX OpenVPN 配置文件。",
    "Latency test failed: QZXVAR0QZX": "延迟测试失败：QZXVAR0QZX",
    "No imported QZXVAR0QZX profile matches the selected Surfshark locations.":
        "没有导入的 QZXVAR0QZX 配置文件与选定的 Surfshark 位置匹配。",
    "Not supported on QZXVAR0QZX": "QZXVAR0QZX 不支持",
    "Ping: QZXVAR0QZXms · Jitter: QZXVAR1QZXms · QZXVAR2QZX":
        "Ping：QZXVAR0QZXms · 抖动： QZXVAR1QZXms · QZXVAR2QZX",
    "Policy: QZXVAR0QZX · Today: QZXVAR1QZX": "保单：QZXVAR0QZX · 今天：QZXVAR1QZX",
    "QZXVAR0QZX CIDRs": "QZXVAR0QZX CIDRs",
    "QZXVAR0QZX Mbps (Ping QZXVAR1QZXms)": "QZXVAR0QZX Mbps（Ping QZXVAR1QZXms）",
    "QZXVAR0QZX added": "QZXVAR0QZX 添加",
    "QZXVAR0QZX countries selected (QZXVAR1QZX CIDRs)":
        "QZXVAR0QZX 所选国家/地区 (QZXVAR1QZX CIDRs)",
    "QZXVAR0QZX left": "QZXVAR0QZX 左",
    "QZXVAR0QZX locations": "QZXVAR0QZX 位置",
    "QZXVAR0QZXms": "QZXVAR0QZXms",
    "Saved to QZXVAR0QZX": "保存到 QZXVAR0QZX",
    "Status: QZXVAR0QZX · Latency: QZXVAR1QZX": "状态：QZXVAR0QZX · 延迟：QZXVAR1QZX",
    "Unjam failed: QZXVAR0QZX": "解除堵塞失败：QZXVAR0QZX",
    "Updated: QZXVAR0QZX": "更新： QZXVAR0QZX",
    "Version: QZXVAR0QZX": "版本：QZXVAR0QZX",
    "شناسه سخت‌افزاری از QZXVAR0QZX (QZXVAR1QZX) دریافت شد.":
        "从 QZXVAR0QZX (QZXVAR1QZX) 接收到硬件 ID。",
    "↑ QZXVAR0QZX Mbps": "↑ QZXVAR0QZX Mbps",
    "↓ QZXVAR0QZX Mbps": "↓ QZXVAR0QZX Mbps",
  },
};

const Map<String, Map<String, String>> inlineAttributeTranslations = {
  "fa": {
    " ?? ": "??",
    " of ": "از",
    " از ": " از ",
    "✓ Verified: All checks passed (XFRM, table 220, HTTPS trace)":
        "✓ تأیید شده: همه بررسی‌ها انجام شد (XFRM، جدول 220، ردیابی HTTPS)",
    "CIDR or IP": "CIDR یا IP",
    "Clear logs": "پاک کردن گزارش‌ها",
    "Clear view": "نمایش پاک",
    "Close Output": "بستن خروجی",
    "Configure device": "پیکربندی دستگاه",
    "Copied subscription link detected.": "پیوند اشتراک کپی شده شناسایی شد.",
    "Copy Output": "خروجی کپی",
    "Copy logs": "کپی سیاههها",
    "Copy visible logs": "کپی سیاهههای قابل مشاهده",
    "Custom Lists": "لیستهای سفارشی",
    "Data Quota (MB, 0 = unlimited)":
        "سهمیه داده (مگابایت، 0 = نامحدود) گزارشهای اشکال زدایی",
    "Delete profile": "حذف نمایه",
    "Disable endpoint": "غیرفعال کردن نقطه پایانی",
    "Domain or IP": "دامنه یا IP",
    "Domain or IP to explain": "دامنه یا IP برای توضیح",
    "Domain, IPv4 or CIDR": "دامنه، IPv4 یا CIDR",
    "Duration (Minutes, 5-1440)": "مدت زمان (دقیقه، 5-1440)",
    "Email": "ایمیل",
    "Email verification code": "کد تأیید ایمیل",
    "Enable endpoint": "فعال کردن نقطه پایانی",
    "Export log file": "صادرات فایل گزارش",
    "Favorite server": "سرور مورد علاقه",
    "Filter by phase (PREPARING, IKE, AUTHENTICATING, VERIFYING, CONNECTED, FAILED) or keyword…":
        "فیلتر بر اساس فاز (آماده سازی، IKE، احراز هویت، تأیید، متصل، ناموفق) یا کلمه کلیدی…",
    "Filter by provider, protocol, status, or error":
        "فیلتر بر اساس ارائه‌دهنده، پروتکل، وضعیت یا خطا",
    "Guest SSID": "مهمان SSID",
    "H": "H",
    "List name (e.g. European Fast)": "نام فهرست (به عنوان مثال European Fast)",
    "Name (optional)": "نام (اختیاری)",
    "Password": "رمز عبور",
    "Paste": "جایگذاری",
    "Pause": "مکث",
    "Personal subscriptions": "اشتراک های شخصی",
    "Policy": "خط مشی",
    "Quick Menu": "منوی سریع",
    "Refresh Guest Status": "تازه کردن وضعیت مهمان",
    "Refresh all": "بازخوانی همه",
    "Remove": "حذف",
    "Resume": "رزومه",
    "Retry probe": "تلاش مجدد",
    "Route action": "عملکرد مسیر",
    "Scope": "محدوده",
    "Search countries…": "جستجوی کشورها…",
    "Search country, city, IP...": "جستجوی کشور، شهر، IP...",
    "Search installed apps or packages": "جستجوی برنامه‌ها یا بسته‌های نصب‌شده",
    "Speed limit (kbit/s, 0 = unlimited)": "محدودیت سرعت (kbit/s، 0 = نامحدود)",
    "Subscription URL": "URL اشتراک",
    "Target Domain or CIDR (e.g. 1.1.1.1/32)":
        "دامنه هدف یا CIDR (به عنوان مثال 1.1.1.1/32)",
    "Test server": "سرور آزمایشی",
    "Waiting for engine connection log stream events?":
        "منتظر رویدادهای جریان گزارش اتصال موتور هستید؟",
    "armoney": "armoney",
    "e.g. 192.168.1.0/24 or 10.0.0.1/32":
        "به عنوان مثال. 192.168.1.0/24 یا 10.0.0.1/32",
    "remaining": "باقی مانده است",
    "username": "نام کاربری",
    "آزمون سرور": "آزمون سرور",
    "اشتراک‌های شخصی": "اشتراک‌های شخصی",
    "باقیمانده": "باقیمانده",
    "بروزرسانی همه": "بروزرسانی همه",
    "جستجو در نام یا پکیج برنامه‌ها": "جستجو در نام یا پکیج برنامه‌ها",
    "جستجوی کشور، شهر، آی‌پی...": "جستجوی کشور، شهر، آی‌پی...",
    "حذف": "حذف",
    "رمز عبور اشتراک": "رمز عبور اشتراک",
    "سرور محبوب": "سرور محبوب",
    "شخصی‌سازی و ساخت دستی شناسه سخت‌افزاری":
        "شخصی‌سازی و ساخت دستی شناسه سخت‌افزاری",
    "عملیات حساب": "عملیات حساب",
    "لینک اشتراک": "لینک اشتراک",
    "لینک کپی‌شده پیدا شد.": "لینک کپی‌شده پیدا شد.",
    "نام دلخواه (اختیاری)": "نام دلخواه (اختیاری)",
    "نام کاربری اشتراک": "نام کاربری اشتراک",
    "چسباندن": "چسباندن",
    "••••••••••••••••": "•••••••••••••••••",
    "Account options": "گزینه‌های حساب",
    "Debug Logs": "گزارش‌های اشکال‌زدایی",
  },
  "ar": {
    " ?? ": "؟؟",
    " of ": "من",
    " از ": "من خادم اختبار",
    "✓ Verified: All checks passed (XFRM, table 220, HTTPS trace)":
        "✓ تم التحقق: اجتازت جميع الفحوصات (XFRM، الجدول 220، تتبع HTTPS)",
    "CIDR or IP": "CIDR أو IP",
    "Clear logs": "مسح السجلات",
    "Clear view": "مسح العرض",
    "Close Output": "إغلاق الإخراج",
    "Configure device": "تكوين الجهاز",
    "Copied subscription link detected.": "تم اكتشاف رابط الاشتراك المنسوخ.",
    "Copy Output": "نسخ المخرجات",
    "Copy logs": "نسخ السجلات",
    "Copy visible logs": "نسخ السجلات المرئية",
    "Custom Lists": "قوائم مخصصة",
    "Data Quota (MB, 0 = unlimited)":
        "حصة البيانات (ميجابايت، 0 = غير محدودة) سجلات تصحيح",
    "Delete profile": "حذف ملف التعريف",
    "Disable endpoint": "تعطيل نقطة النهاية",
    "Domain or IP": "المجال أو IP",
    "Domain or IP to explain": "المجال أو IP للشرح",
    "Domain, IPv4 or CIDR": "النطاق، IPv4 أو CIDR",
    "Duration (Minutes, 5-1440)": "المدة (5-1440 دقيقة)",
    "Email": "البريد الإلكتروني",
    "Email verification code": "رمز التحقق من البريد الإلكتروني",
    "Enable endpoint": "تمكين نقطة النهاية",
    "Export log file": "تصدير ملف السجل",
    "Favorite server": "الخادم المفضل",
    "Filter by phase (PREPARING, IKE, AUTHENTICATING, VERIFYING, CONNECTED, FAILED) or keyword…":
        "التصفية حسب المرحلة (PREPARING، IKE، AUTHENTICATING، VERIFYING، CONNECTED، FAILED) أو الكلمة الأساسية...",
    "Filter by provider, protocol, status, or error":
        "التصفية حسب الموفر أو البروتوكول أو الحالة أو الخطأ",
    "Guest SSID": "Guest SSID",
    "H": "H",
    "List name (e.g. European Fast)":
        "اسم القائمة (على سبيل المثال، الأوروبي السريع)",
    "Name (optional)": "الاسم (اختياري)",
    "Password": "كلمة المرور",
    "Paste": "لصق",
    "Pause": "إيقاف مؤقت",
    "Personal subscriptions": "الاشتراكات الشخصية سياسة",
    "Quick Menu": "القائمة السريعة",
    "Refresh Guest Status": "تحديث حالة الضيف",
    "Refresh all": "تحديث الكل",
    "Remove": "إزالة",
    "Resume": "استئناف",
    "Retry probe": "إعادة محاولة المسبار",
    "Route action": "إجراء المسار",
    "Scope": "النطاق",
    "Search countries…": "البحث عن البلدان...",
    "Search country, city, IP...": "البحث عن البلد، المدينة، IP...",
    "Search installed apps or packages": "البحث في التطبيقات أو الحزم المثبتة",
    "Speed limit (kbit/s, 0 = unlimited)":
        "حد السرعة (كيلوبت/ثانية، 0 = غير محدود)",
    "Subscription URL": "عنوان URL للاشتراك",
    "Target Domain or CIDR (e.g. 1.1.1.1/32)":
        "المجال المستهدف أو CIDR (على سبيل المثال 1.1.1.1/32)",
    "Test server": "خادم الاختبار",
    "Waiting for engine connection log stream events?":
        "هل تنتظر أحداث دفق سجل اتصال المحرك؟",
    "armoney": "Armoney",
    "e.g. 192.168.1.0/24 or 10.0.0.1/32":
        "على سبيل المثال. 192.168.1.0/24 أو 10.0.0.1/32",
    "remaining": "المتبقية",
    "username": "اسم المستخدم",
    "آزمون سرور": "اختبار الخادم",
    "اشتراک‌های شخصی": "الاشتراكات الشخصية",
    "باقیمانده": "المتبقية",
    "بروزرسانی همه": "تحديث جميع",
    "جستجو در نام یا پکیج برنامه‌ها": "البحث حسب اسم التطبيق أو الحزمة",
    "جستجوی کشور، شهر، آی‌پی...": "البحث عن البلد والمدينة وIP...",
    "حذف": "حذف",
    "رمز عبور اشتراک": "كلمة مرور الاشتراك",
    "سرور محبوب": "الخادم الشهير",
    "شخصی‌سازی و ساخت دستی شناسه سخت‌افزاری":
        "تخصيص معرف الجهاز وإنشائه يدويًا عمليات حساب",
    "عملیات حساب": "عمليات الحساب",
    "لینک اشتراک": "رابط الاشتراك",
    "لینک کپی‌شده پیدا شد.": "تم العثور على رابط مكرر.",
    "نام دلخواه (اختیاری)": "الاسم المفضل (اختياري)",
    "نام کاربری اشتراک": "اسم المستخدم الخاص بالاشتراك",
    "چسباندن": "لصق",
    "••••••••••••••••": "••••••••••••••••",
    "Account options": "خيارات الحساب",
    "Debug Logs": "سجلات التصحيح",
    "Policy": "السياسة",
  },
  "tr": {
    " ?? ": " / ",
    " of ": "'den",
    " از ": " / ",
    "✓ Verified: All checks passed (XFRM, table 220, HTTPS trace)":
        "✓ Doğrulandı: Tüm kontroller başarılı oldu (XFRM, tablo 220, HTTPS izleme)",
    "Account options": "Hesap seçenekleri",
    "CIDR or IP": "CIDR veya IP",
    "Clear logs": "Günlükleri temizle",
    "Clear view": "Görünümü temizle",
    "Close Output": "Çıkışı kapat",
    "Configure device": "Cihazı yapılandırın",
    "Copied subscription link detected.":
        "Kopyalanan abonelik bağlantısı algılandı.",
    "Copy Output": "Çıkışı Kopyala",
    "Copy logs": "Günlükleri kopyala",
    "Copy visible logs": "Görünür günlükleri kopyala",
    "Custom Lists": "Özel Listeler",
    "Data Quota (MB, 0 = unlimited)": "Veri Kotası (MB, 0 = sınırsız)",
    "Debug Logs": "Hata Ayıklama Günlükleri",
    "Delete profile": "Profili sil",
    "Disable endpoint": "Açıklamak için",
    "Domain or IP": "Etki Alanı veya IP",
    "Domain or IP to explain": "Etki Alanı veya IP'yi devre dışı bırakın",
    "Domain, IPv4 or CIDR": "Etki Alanı, IPv4 veya CIDR",
    "Duration (Minutes, 5-1440)": "Süre (Dakika, 5-1440)",
    "Email": "E-posta",
    "Email verification code": "E-posta doğrulama kodu",
    "Enable endpoint": "Uç noktayı etkinleştirin",
    "Export log file": "Günlük dosyasını dışa aktarın",
    "Favorite server": "Favori sunucu",
    "Filter by phase (PREPARING, IKE, AUTHENTICATING, VERIFYING, CONNECTED, FAILED) or keyword…":
        "Aşamaya göre filtreleyin (HAZIRLIK, IKE, KİMLİK DOĞRULAMA, DOĞRULANIYOR, BAĞLANTI, BAŞARISIZ) veya anahtar kelimeye göre filtreleyin…",
    "Filter by provider, protocol, status, or error":
        "Sağlayıcıya, protokole, duruma veya hataya göre filtreleyin",
    "Guest SSID": "Konuk SSID",
    "H": "H",
    "List name (e.g. European Fast)": "Liste adı (ör. Avrupa Hızlı)",
    "Name (optional)": "Ad (isteğe bağlı)",
    "Password": "Şifre",
    "Paste": "Yapıştır",
    "Pause": "Duraklat",
    "Personal subscriptions": "Kişisel abonelikler",
    "Policy": "Politika",
    "Quick Menu": "Hızlı Menü",
    "Refresh Guest Status": "Konuk Durumunu Yenile",
    "Refresh all": "Tümünü yenile",
    "Remove": "Kaldır",
    "Resume": "'yi kaldır",
    "Retry probe": "'ye devam et Probu yeniden dene",
    "Route action": "Rota eylemi",
    "Scope": "Kapsam",
    "Search countries…": "Ülkeleri ara…",
    "Search country, city, IP...": "Ülkeyi, şehri, IP adresini ara...",
    "Search installed apps or packages":
        "Yüklü uygulamaları veya paketleri arayın",
    "Speed limit (kbit/s, 0 = unlimited)": "Hız sınırı (kbit/s, 0 = sınırsız)",
    "Subscription URL": "Abonelik URL'si",
    "Target Domain or CIDR (e.g. 1.1.1.1/32)":
        "Hedef Etki Alanı veya CIDR (ör. 1.1.1.1/32)",
    "Test server": "Test sunucusu",
    "Waiting for engine connection log stream events?":
        "Motor bağlantısı günlük akışı olaylarını mı bekliyorsunuz?",
    "armoney": "armoney",
    "e.g. 192.168.1.0/24 or 10.0.0.1/32": "ör. 192.168.1.0/24 veya 10.0.0.1/32",
    "remaining": "kaldı",
    "username": "kullanıcı adı",
    "آزمون سرور": "test sunucusundan",
    "اشتراک‌های شخصی": "kişisel abonelikler",
    "باقیمانده": "kaldı",
    "بروزرسانی همه": "Tümünü güncelle",
    "جستجو در نام یا پکیج برنامه‌ها": "Uygulama adı veya pakete göre ara",
    "جستجوی کشور، شهر، آی‌پی...": "Ülke, şehir, IP ara...",
    "حذف": "Sil",
    "رمز عبور اشتراک": "Abonelik Şifresi",
    "سرور محبوب": "Popüler Sunucu",
    "شخصی‌سازی و ساخت دستی شناسه سخت‌افزاری":
        "Donanım Kimliğini Kişiselleştirin ve Manuel Olarak Oluşturun",
    "عملیات حساب": "Hesap İşlemleri",
    "لینک اشتراک": "Abonelik bağlantısı",
    "لینک کپی‌شده پیدا شد.": "Yinelenen bağlantı bulundu.",
    "نام دلخواه (اختیاری)": "Tercih edilen ad (isteğe bağlı)",
    "نام کاربری اشتراک": "Aboneliğin kullanıcı adı",
    "چسباندن": "yapıştır",
    "••••••••••••••••": "•••••••••••••••••",
  },
  "es": {
    " ?? ": "??",
    " of ": "de",
    " از ": "del servidor de prueba",
    "✓ Verified: All checks passed (XFRM, table 220, HTTPS trace)":
        "✓ Verificado: todas las comprobaciones pasaron (XFRM, tabla 220, seguimiento HTTPS)",
    "Account options": "Opciones de cuenta",
    "CIDR or IP": "CIDR o IP",
    "Clear logs": "Borrar registros",
    "Clear view": "Borrar vista",
    "Close Output": "Cerrar salida",
    "Configure device": "Configurar dispositivo",
    "Copied subscription link detected.":
        "Se detectó enlace de suscripción copiado.",
    "Copy Output": "Copiar salida",
    "Copy logs": "Copiar registros",
    "Copy visible logs": "Copiar registros visibles",
    "Custom Lists": "Listas personalizadas",
    "Data Quota (MB, 0 = unlimited)": "Cuota de datos (MB, 0 = ilimitada)",
    "Debug Logs": "Registros de depuración",
    "Delete profile": "Eliminar perfil",
    "Disable endpoint": "Deshabilitar punto final",
    "Domain or IP": "Dominio o IP",
    "Domain or IP to explain": "Dominio o IP para explicar",
    "Domain, IPv4 or CIDR": "Dominio, IPv4 o CIDR",
    "Duration (Minutes, 5-1440)": "Duración (Minutos, 5-1440)",
    "Email": "Correo electrónico",
    "Email verification code": "Código de verificación de correo electrónico",
    "Enable endpoint": "Habilitar punto final",
    "Export log file": "Exportar archivo de registro",
    "Favorite server": "Servidor favorito",
    "Filter by phase (PREPARING, IKE, AUTHENTICATING, VERIFYING, CONNECTED, FAILED) or keyword…":
        "Filtrar por fase (PREPARANDO, IKE, AUTENTIFICANDO, VERIFICANDO, CONECTADO, FALLADO) o palabra clave…",
    "Filter by provider, protocol, status, or error":
        "Filtrar por proveedor, protocolo, estado o error",
    "Guest SSID": "SSID de invitado",
    "H": "H",
    "List name (e.g. European Fast)":
        "Nombre de lista (p. ej., rápido europeo)",
    "Name (optional)": "Nombre (opcional)",
    "Password": "Contraseña",
    "Paste": "Pegar",
    "Pause": "Pausa",
    "Personal subscriptions": "Suscripciones personales",
    "Policy": "Política",
    "Quick Menu": "Menú rápido",
    "Refresh Guest Status": "Actualizar estado de invitado",
    "Refresh all": "Actualizar todo",
    "Remove": "Eliminar",
    "Resume": "Reanudar",
    "Retry probe": "Reintentar sonda",
    "Route action": "Acción de ruta",
    "Scope": "Alcance",
    "Search countries…": "Buscar países…",
    "Search country, city, IP...": "Buscar país, ciudad, IP...",
    "Search installed apps or packages":
        "Buscar aplicaciones o paquetes instalados",
    "Speed limit (kbit/s, 0 = unlimited)":
        "Límite de velocidad (kbit/s, 0 = ilimitado)",
    "Subscription URL": "URL de suscripción",
    "Target Domain or CIDR (e.g. 1.1.1.1/32)":
        "Dominio de destino o CIDR (por ejemplo, 1.1.1.1/32)",
    "Test server": "Servidor de prueba",
    "Waiting for engine connection log stream events?":
        "¿Esperando eventos de flujo de registro de conexión del motor?",
    "armoney": "armoney",
    "e.g. 192.168.1.0/24 or 10.0.0.1/32": "p.e. 192.168.1.0/24 o 10.0.0.1/32",
    "remaining": "restantes",
    "username": "nombre de usuario",
    "آزمون سرور": "Prueba del servidor",
    "اشتراک‌های شخصی": "suscripciones personales",
    "باقیمانده": "restantes",
    "بروزرسانی همه": "Actualizar todo",
    "جستجو در نام یا پکیج برنامه‌ها":
        "Buscar por nombre de aplicación o paquete",
    "جستجوی کشور، شهر، آی‌پی...": "Buscar país, ciudad, IP...",
    "حذف": "Eliminar",
    "رمز عبور اشتراک": "Contraseña de suscripción",
    "سرور محبوب": "Servidor popular",
    "شخصی‌سازی و ساخت دستی شناسه سخت‌افزاری":
        "Personalizar y crear manualmente ID de hardware",
    "عملیات حساب": "Operaciones de cuenta",
    "لینک اشتراک": "Enlace de suscripción",
    "لینک کپی‌شده پیدا شد.": "Enlace duplicado encontrado.",
    "نام دلخواه (اختیاری)": "Nombre preferido (opcional)",
    "نام کاربری اشتراک": "Nombre de usuario de la suscripción",
    "چسباندن": "pasta",
    "••••••••••••••••": "••••••••••••••••",
  },
  "fr": {
    " ?? ": "??",
    " of ": "de",
    " از ": "du serveur de test",
    "✓ Verified: All checks passed (XFRM, table 220, HTTPS trace)":
        "✓ Vérifié : toutes les vérifications ont réussi (XFRM, table 220, trace HTTPS)",
    "Account options": "Options de compte",
    "CIDR or IP": "CIDR ou IP",
    "Clear logs": "Effacer les journaux",
    "Clear view": "Effacer la vue",
    "Close Output": "Fermer la sortie",
    "Configure device": "Configurer l'appareil",
    "Copied subscription link detected.": "Lien d'abonnement copié détecté.",
    "Copy Output": "Copier la sortie",
    "Copy logs": "Copier les journaux",
    "Copy visible logs": "Copier les journaux visibles",
    "Custom Lists": "Listes personnalisées",
    "Data Quota (MB, 0 = unlimited)": "Quota de données (Mo, 0 = illimité)",
    "Debug Logs": "Journaux de débogage",
    "Delete profile": "Supprimer le profil",
    "Disable endpoint": "Désactiver le point de terminaison",
    "Domain or IP": "Domaine ou IP",
    "Domain or IP to explain": "Domaine ou IP pour expliquer",
    "Domain, IPv4 or CIDR": "Domaine, IPv4 ou CIDR",
    "Duration (Minutes, 5-1440)": "Durée (minutes, 5-1440)",
    "Email": "E-mail",
    "Email verification code": "Code de vérification de l'e-mail",
    "Enable endpoint": "Activer le point de terminaison",
    "Export log file": "Exporter le fichier journal",
    "Favorite server": "Serveur favori",
    "Filter by phase (PREPARING, IKE, AUTHENTICATING, VERIFYING, CONNECTED, FAILED) or keyword…":
        "Filtrer par phase (PRÉPARATION, IKE, AUTHENTIFICATION, VÉRIFICATION, CONNECTÉ, ÉCHEC) ou mot-clé…",
    "Filter by provider, protocol, status, or error":
        "Filtrer par fournisseur, protocole, statut ou erreur",
    "Guest SSID": "SSID invité",
    "H": "H",
    "List name (e.g. European Fast)":
        "Nom de la liste (par exemple European Fast)",
    "Name (optional)": "Nom (facultatif)",
    "Password": "Mot de passe",
    "Paste": "Coller",
    "Pause": "Pause",
    "Personal subscriptions": "Abonnements personnels",
    "Policy": "Politique",
    "Quick Menu": "Menu rapide",
    "Refresh Guest Status": "Actualiser le statut d'invité",
    "Refresh all": "Actualiser tous les",
    "Remove": "Supprimer",
    "Resume": "Reprendre",
    "Retry probe": "Réessayer la sonde",
    "Route action": "Action d'itinéraire",
    "Scope": "Portée",
    "Search countries…": "Rechercher des pays…",
    "Search country, city, IP...":
        "Rechercher un pays, une ville, une adresse IP...",
    "Search installed apps or packages":
        "Rechercher des applications ou des packages installés",
    "Speed limit (kbit/s, 0 = unlimited)":
        "Limite de vitesse (kbit/s, 0 = illimité)",
    "Subscription URL": "URL d'abonnement",
    "Target Domain or CIDR (e.g. 1.1.1.1/32)":
        "Domaine cible ou CIDR (par exemple 1.1.1.1/32)",
    "Test server": "Serveur de test",
    "Waiting for engine connection log stream events?":
        "En attente des événements de flux de journaux de connexion au moteur ?",
    "armoney": "armoney",
    "e.g. 192.168.1.0/24 or 10.0.0.1/32":
        "par ex. 192.168.1.0/24 ou 10.0.0.1/32",
    "remaining": "restant",
    "username": "nom d'utilisateur",
    "آزمون سرور": "Test du serveur",
    "اشتراک‌های شخصی": "abonnements personnels",
    "باقیمانده": "restants",
    "بروزرسانی همه": "Tout mettre à jour",
    "جستجو در نام یا پکیج برنامه‌ها":
        "Rechercher par nom d'application ou package",
    "جستجوی کشور، شهر، آی‌پی...": "Rechercher par pays, ville, IP...",
    "حذف": "Supprimer",
    "رمز عبور اشتراک": "Mot de passe d'abonnement",
    "سرور محبوب": "Serveur populaire",
    "شخصی‌سازی و ساخت دستی شناسه سخت‌افزاری":
        "Personnaliser et créer manuellement l'ID matériel",
    "عملیات حساب": "Opérations de compte",
    "لینک اشتراک": "Lien d'abonnement",
    "لینک کپی‌شده پیدا شد.": "Lien dupliqué trouvé.",
    "نام دلخواه (اختیاری)": "Nom préféré (facultatif)",
    "نام کاربری اشتراک": "Nom d'utilisateur de l'abonnement",
    "چسباندن": "coller",
    "••••••••••••••••": "••••••••••••••••",
  },
  "de": {
    " ?? ": "??",
    " of ": "von",
    " از ": "vom",
    "✓ Verified: All checks passed (XFRM, table 220, HTTPS trace)":
        "✓ Verifiziert: Alle Prüfungen bestanden (XFRM, Tabelle 220, HTTPS-Trace)",
    "Account options": "Kontooptionen",
    "CIDR or IP": "CIDR oder IP",
    "Clear logs": "Protokolle löschen",
    "Clear view": "Ansicht löschen",
    "Close Output": "Ausgabe schließen",
    "Configure device": "Gerät konfigurieren",
    "Copied subscription link detected.": "Kopierter Abonnement-Link erkannt.",
    "Copy Output": "Ausgabe kopieren",
    "Copy logs": "Protokolle kopieren",
    "Copy visible logs": "Sichtbare Protokolle kopieren",
    "Custom Lists": "Benutzerdefinierte Listen",
    "Data Quota (MB, 0 = unlimited)": "Datenkontingent (MB, 0 = unbegrenzt)",
    "Debug Logs": "Debug-Protokolle",
    "Delete profile": "Profil löschen",
    "Disable endpoint": "Endpunkt deaktivieren",
    "Domain or IP": "Domäne oder IP",
    "Domain or IP to explain": "Domäne oder IP zur Erläuterung",
    "Domain, IPv4 or CIDR": "Domäne, IPv4 oder CIDR",
    "Duration (Minutes, 5-1440)": "Dauer (Minuten, 5-1440)",
    "Email": "E-Mail",
    "Email verification code": "E-Mail-Bestätigungscode",
    "Enable endpoint": "Endpunkt aktivieren",
    "Export log file": "Protokolldatei exportieren",
    "Favorite server": "Lieblingsserver",
    "Filter by phase (PREPARING, IKE, AUTHENTICATING, VERIFYING, CONNECTED, FAILED) or keyword…":
        "Filtern nach Phase (VORBEREITUNG, IKE, AUTHENTIFIZIERUNG, ÜBERPRÜFUNG, VERBUNDEN, FEHLGESCHLAGEN) oder Schlüsselwort…",
    "Filter by provider, protocol, status, or error":
        "Nach Anbieter, Protokoll, Status oder Fehler filtern",
    "Guest SSID": "Gast-SSID",
    "H": "H",
    "List name (e.g. European Fast)": "Listenname (z. B. European Fast)",
    "Name (optional)": "Name (optional)",
    "Password": "Passwort",
    "Paste": "Einfügen",
    "Pause": "Pause",
    "Personal subscriptions": "Persönliche Abonnements",
    "Policy": "Richtlinie",
    "Quick Menu": "Schnellmenü",
    "Refresh Guest Status": "Gaststatus aktualisieren",
    "Refresh all": "Alle aktualisieren",
    "Remove": "Entfernen",
    "Resume": "entfernen",
    "Retry probe": "fortsetzen Probe erneut versuchen",
    "Route action": "Routenaktion",
    "Scope": "Geltungsbereich",
    "Search countries…": "Länder suchen…",
    "Search country, city, IP...": "Land, Stadt, IP suchen...",
    "Search installed apps or packages":
        "Durchsuchen Sie installierte Apps oder Pakete",
    "Speed limit (kbit/s, 0 = unlimited)":
        "Geschwindigkeitsbegrenzung (kbit/s, 0 = unbegrenzt)",
    "Subscription URL": "Abonnement-URL",
    "Target Domain or CIDR (e.g. 1.1.1.1/32)":
        "Zieldomäne oder CIDR (z. B. 1.1.1.1/32)",
    "Test server": "Testserver",
    "Waiting for engine connection log stream events?":
        "Warten auf Engine-Verbindungsprotokoll-Stream-Ereignisse?",
    "armoney": "armoney",
    "e.g. 192.168.1.0/24 or 10.0.0.1/32":
        "z.B. 192.168.1.0/24 oder 10.0.0.1/32",
    "remaining": "verbleibend",
    "username": "Benutzername",
    "آزمون سرور": "Testserver",
    "اشتراک‌های شخصی": "verbleibende persönliche Abonnements",
    "باقیمانده": "Verbleibend",
    "بروزرسانی همه": "Alle aktualisieren",
    "جستجو در نام یا پکیج برنامه‌ها": "Suche nach App-Namen oder Paket",
    "جستجوی کشور، شهر، آی‌پی...": "Suche nach Land, Stadt, IP...",
    "حذف": "Löschen",
    "رمز عبور اشتراک": "Abonnementkennwort",
    "سرور محبوب": "Beliebter Server",
    "شخصی‌سازی و ساخت دستی شناسه سخت‌افزاری":
        "Hardware-ID personalisieren und manuell erstellen",
    "عملیات حساب": "Kontovorgänge",
    "لینک اشتراک": "Abonnement-Link",
    "لینک کپی‌شده پیدا شد.": "Doppelter Link gefunden.",
    "نام دلخواه (اختیاری)": "Bevorzugter Name (optional)",
    "نام کاربری اشتراک": "Benutzername des Abonnements",
    "چسباندن": "Paste",
    "••••••••••••••••": "•••••••••••••••••",
  },
  "it": {
    " ?? ": "??",
    " of ": "di",
    " از ": "dal server di test",
    "✓ Verified: All checks passed (XFRM, table 220, HTTPS trace)":
        "✓ Verificato: tutti i controlli superati (XFRM, tabella 220, traccia HTTPS)",
    "Account options": "Opzioni account",
    "CIDR or IP": "QZXATTR0QZX o IP",
    "Clear logs": "Cancella registri",
    "Clear view": "Cancella visualizzazione",
    "Close Output": "Chiudi output",
    "Configure device": "Configura dispositivo",
    "Copied subscription link detected.":
        "Rilevato collegamento di abbonamento copiato.",
    "Copy Output": "Copia output",
    "Copy logs": "Copia registri",
    "Copy visible logs": "Copia registri visibili",
    "Custom Lists": "Elenchi personalizzati",
    "Data Quota (MB, 0 = unlimited)": "Quota dati (MB, 0 = illimitato)",
    "Debug Logs": "Registri debug",
    "Delete profile": "Elimina profilo",
    "Disable endpoint": "Disabilita endpoint",
    "Domain or IP": "Dominio o IP",
    "Domain or IP to explain": "Dominio o IP per spiegare",
    "Domain, IPv4 or CIDR": "Dominio, IPv4 o CIDR",
    "Duration (Minutes, 5-1440)": "Durata (Minuti, 5-1440)",
    "Email": "E-mail",
    "Email verification code": "Codice di verifica e-mail",
    "Enable endpoint": "Abilita endpoint",
    "Export log file": "Esporta file di registro",
    "Favorite server": "Server preferito",
    "Filter by phase (PREPARING, IKE, AUTHENTICATING, VERIFYING, CONNECTED, FAILED) or keyword…":
        "Filtra per fase (PREPARING, IKE, AUTHENTICATING, VERIFYING, CONNECTED, FAILED) o parola chiave...",
    "Filter by provider, protocol, status, or error":
        "Filtra per provider, protocollo, stato o errore",
    "Guest SSID": "SSID ospite",
    "H": "H",
    "List name (e.g. European Fast)": "Nome elenco (ad esempio European Fast)",
    "Name (optional)": "Nome (facoltativo)",
    "Password": "Password",
    "Paste": "Incolla",
    "Pause": "Pausa",
    "Personal subscriptions": "Abbonamenti personali",
    "Policy": "Politica",
    "Quick Menu": "Menu rapido",
    "Refresh Guest Status": "Aggiorna stato ospite",
    "Refresh all": "Aggiorna tutto",
    "Remove": "Rimuovi",
    "Resume": "Riprendi",
    "Retry probe": "Riprova sonda",
    "Route action": "Azione percorso",
    "Scope": "Ambito",
    "Search countries…": "Cerca paesi…",
    "Search country, city, IP...": "Cerca paese, città, IP...",
    "Search installed apps or packages": "Cerca app o pacchetti installati",
    "Speed limit (kbit/s, 0 = unlimited)":
        "Limite di velocità (kbit/s, 0 = illimitato)",
    "Subscription URL": "URL di abbonamento",
    "Target Domain or CIDR (e.g. 1.1.1.1/32)":
        "Dominio di destinazione o CIDR (ad es. 1.1.1.1/32)",
    "Test server": "Server di prova",
    "Waiting for engine connection log stream events?":
        "In attesa degli eventi del flusso di registro di connessione del motore?",
    "armoney": "armoney",
    "e.g. 192.168.1.0/24 or 10.0.0.1/32": "ad es. 192.168.1.0/24 o 10.0.0.1/32",
    "remaining": "rimanenti",
    "username": "nome utente",
    "آزمون سرور": "Test del server",
    "اشتراک‌های شخصی": "abbonamenti personali",
    "باقیمانده": "rimanenti",
    "بروزرسانی همه": "Aggiorna tutto",
    "جستجو در نام یا پکیج برنامه‌ها": "Cerca per nome app o pacchetto",
    "جستجوی کشور، شهر، آی‌پی...": "Cerca paese, città, IP...",
    "حذف": "Elimina",
    "رمز عبور اشتراک": "Password di abbonamento",
    "سرور محبوب": "Server popolare",
    "شخصی‌سازی و ساخت دستی شناسه سخت‌افزاری":
        "Personalizza e crea manualmente ID hardware",
    "عملیات حساب": "Operazioni account",
    "لینک اشتراک": "Collegamento di sottoscrizione",
    "لینک کپی‌شده پیدا شد.": "Collegamento duplicato trovato.",
    "نام دلخواه (اختیاری)": "Nome preferito (facoltativo)",
    "نام کاربری اشتراک": "Nome utente dell'abbonamento",
    "چسباندن": "impasto",
    "••••••••••••••••": "••••••••••••••••",
  },
  "ru": {
    " ?? ": "??",
    " of ": "из",
    " از ": "с тестового сервера",
    "✓ Verified: All checks passed (XFRM, table 220, HTTPS trace)":
        "✓ Проверено: все проверки пройдены (XFRM, таблица 220, трассировка HTTPS)",
    "Account options": "Параметры учетной записи",
    "CIDR or IP": "CIDR или IP",
    "Clear logs": "Очистить журналы",
    "Clear view": "Очистить просмотр",
    "Close Output": "Закрыть вывод",
    "Configure device": "Настроить устройство",
    "Copied subscription link detected.":
        "Обнаружена скопированная ссылка на подписку.",
    "Copy Output": "Копировать выходные данные",
    "Copy logs": "Копировать журналы",
    "Copy visible logs": "Копировать видимые журналы",
    "Custom Lists": "Пользовательские списки",
    "Data Quota (MB, 0 = unlimited)": "Квота данных (МБ, 0 = неограниченно)",
    "Debug Logs": "Журналы отладки",
    "Delete profile": "Удалить профиль",
    "Disable endpoint": "Отключить конечную точку",
    "Domain or IP": "Домен или IP",
    "Domain or IP to explain": "Домен или IP, чтобы объяснить",
    "Domain, IPv4 or CIDR": "Домен, IPv4 или CIDR",
    "Duration (Minutes, 5-1440)": "Продолжительность (минуты, 5–1440)",
    "Email": "Электронная почта",
    "Email verification code": "Код подтверждения электронной почты",
    "Enable endpoint": "Включить конечную точку",
    "Export log file": "Экспортировать файл журнала",
    "Favorite server": "Избранный сервер",
    "Filter by phase (PREPARING, IKE, AUTHENTICATING, VERIFYING, CONNECTED, FAILED) or keyword…":
        "Фильтровать по этапу (ПОДГОТОВКА, IKE, АУТЕНТИФИКАЦИЯ, ВЕРИФИКАЦИЯ, ПОДКЛЮЧЕНИЕ, ОШИБКА) или ключевому слову…",
    "Filter by provider, protocol, status, or error":
        "Фильтровать по провайдеру, протоколу, статусу или ошибке",
    "Guest SSID": "Guest SSID",
    "H": "H",
    "List name (e.g. European Fast)": "Имя в списке (например, European Fast)",
    "Name (optional)": "Имя (необязательно)",
    "Password": "Пароль",
    "Paste": "Вставить",
    "Pause": "Пауза",
    "Personal subscriptions": "Личные подписки",
    "Policy": "Политика",
    "Quick Menu": "Быстрое меню",
    "Refresh Guest Status": "Обновить статус гостя",
    "Refresh all": "Обновить все",
    "Remove": "Удалить",
    "Resume": "Возобновить",
    "Retry probe": "Повторить попытку",
    "Route action": "Действие маршрута",
    "Scope": "Область действия",
    "Search countries…": "Поиск стран…",
    "Search country, city, IP...": "Поиск страны, города, IP...",
    "Search installed apps or packages":
        "Поиск установленных приложений или пакетов",
    "Speed limit (kbit/s, 0 = unlimited)":
        "Ограничение скорости (кбит/с, 0 = неограниченно)",
    "Subscription URL": "URL-адрес подписки",
    "Target Domain or CIDR (e.g. 1.1.1.1/32)":
        "Целевой домен или CIDR (например, 1.1.1.1/32)",
    "Test server": "Тестовый сервер",
    "Waiting for engine connection log stream events?":
        "Ожидаете событий потока журнала подключений к механизму?",
    "armoney": "Armoney",
    "e.g. 192.168.1.0/24 or 10.0.0.1/32":
        "например. Осталось 192.168.1.0/24 или 10.0.0.1/32",
    "username": "имя пользователя",
    "آزمون سرور": "Тестовый сервер",
    "اشتراک‌های شخصی": "оставшиеся персональные подписки",
    "باقیمانده": "Осталось",
    "بروزرسانی همه": "Обновить все",
    "جستجو در نام یا پکیج برنامه‌ها": "Поиск по названию приложения или пакету",
    "جستجوی کشور، شهر، آی‌پی...": "Поиск по стране, городу, IP-адресу...",
    "حذف": "Удалить",
    "رمز عبور اشتراک": "Пароль подписки",
    "سرور محبوب": "Популярный сервер",
    "شخصی‌سازی و ساخت دستی شناسه سخت‌افزاری":
        "Персонализация и создание идентификатора оборудования вручную",
    "عملیات حساب": "Операции с учетной записью",
    "لینک اشتراک": "Ссылка на подписку",
    "لینک کپی‌شده پیدا شد.": "Обнаружена повторяющаяся ссылка.",
    "نام دلخواه (اختیاری)": "Предпочтительное имя (необязательно)",
    "نام کاربری اشتراک": "Имя пользователя подписки",
    "چسباندن": "вставить",
    "••••••••••••••••": "•••••••••••••••",
    "remaining": "Осталось",
  },
  "zh": {
    " ?? ": "??",
    " of ": "的",
    " از ": "来自",
    "✓ Verified: All checks passed (XFRM, table 220, HTTPS trace)":
        "✓ 已验证：所有检查均已通过（XFRM、表 220、HTTPS 跟踪）",
    "Account options": "帐户选项",
    "CIDR or IP": "CIDR 或 IP",
    "Clear logs": "清除日志",
    "Clear view": "清除视图",
    "Close Output": "关闭输出",
    "Configure device": "配置设备",
    "Copied subscription link detected.": "检测到复制的订阅链接。",
    "Copy Output": "复制输出",
    "Copy logs": "复制日志",
    "Copy visible logs": "复制可见日志",
    "Custom Lists": "自定义列表",
    "Data Quota (MB, 0 = unlimited)": "数据配额（MB，0 = 无限制）",
    "Debug Logs": "调试日志",
    "Delete profile": "删除配置文件",
    "Disable endpoint": "禁用端点",
    "Domain or IP": "域或 IP",
    "Domain or IP to explain": "域或 IP 说明",
    "Domain, IPv4 or CIDR": "域名、IPv4 或 CIDR",
    "Duration (Minutes, 5-1440)": "持续时间（分钟，5-1440）",
    "Email": "电子邮件",
    "Email verification code": "电子邮件验证码",
    "Enable endpoint": "启用端点",
    "Export log file": "导出日志文件",
    "Favorite server": "最喜欢的服务器",
    "Filter by phase (PREPARING, IKE, AUTHENTICATING, VERIFYING, CONNECTED, FAILED) or keyword…":
        "按阶段（准备、IKE、身份验证、验证、已连接、失败）或关键字过滤...",
    "Filter by provider, protocol, status, or error": "按提供商、协议、状态或错误过滤",
    "Guest SSID": "访客 SSID",
    "H": "H",
    "List name (e.g. European Fast)": "列表名称（例如欧洲快速）",
    "Name (optional)": "名称（可选）",
    "Password": "密码",
    "Paste": "粘贴",
    "Pause": "暂停",
    "Personal subscriptions": "个人订阅",
    "Policy": "策略",
    "Quick Menu": "快捷菜单",
    "Refresh Guest Status": "刷新访客状态",
    "Refresh all": "刷新全部",
    "Remove": "删除",
    "Resume": "恢复",
    "Retry probe": "重试探测",
    "Route action": "路线操作",
    "Scope": "范围",
    "Search countries…": "搜索国家/地区...",
    "Search country, city, IP...": "搜索国家/地区、城市、IP...",
    "Search installed apps or packages": "搜索已安装的应用程序或软件包",
    "Speed limit (kbit/s, 0 = unlimited)": "速度限制（kbit/s，0 = 无限制）",
    "Subscription URL": "订阅 URL",
    "Target Domain or CIDR (e.g. 1.1.1.1/32)": "目标域或 CIDR（例如 1.1.1.1/32）",
    "Test server": "测试服务器",
    "Waiting for engine connection log stream events?": "正在等待引擎连接日志流事件？",
    "armoney": "armoney",
    "e.g. 192.168.1.0/24 or 10.0.0.1/32": "例如剩余 192.168.1.0/24 或 10.0.0.1/32",
    "remaining": "剩余",
    "username": "用户名",
    "آزمون سرور": "测试服务器",
    "اشتراک‌های شخصی": "个人订阅",
    "باقیمانده": "剩余",
    "بروزرسانی همه": "更新全部",
    "جستجو در نام یا پکیج برنامه‌ها": "按应用名称或程序包搜索",
    "جستجوی کشور، شهر، آی‌پی...": "搜索国家、城市、IP...",
    "حذف": "删除",
    "رمز عبور اشتراک": "订阅密码",
    "سرور محبوب": "热门服务器",
    "شخصی‌سازی و ساخت دستی شناسه سخت‌افزاری": "个性化并手动创建硬件 ID",
    "عملیات حساب": "账户操作",
    "لینک اشتراک": "订阅链接",
    "لینک کپی‌شده پیدا شد.": "发现重复的链接。",
    "نام دلخواه (اختیاری)": "首选名称（可选）",
    "نام کاربری اشتراک": "订阅的用户名",
    "چسباندن": "粘贴",
    "••••••••••••••••": "•••••••••••••••",
  },
};

const Map<String, Map<String, String>> inlineAttributeTemplateTranslations = {
  "fa": {
    "⚠ Notice: QZXVAR0QZX": "⚠ توجه: QZXVAR0QZX",
    "No log lines matched the filter \"QZXVAR0QZX\" [QZXVAR1QZX].":
        "هیچ خط گزارشی با فیلتر \"QZXVAR0QZX\" [QZXVAR1QZX] مطابقت ندارد.",
    "Wi-Fi QR URI: QZXVAR0QZX": "Wi-Fi QR URI: QZXVAR0QZX",
  },
  "ar": {
    "⚠ Notice: QZXVAR0QZX": "⚠ ملاحظة: QZXVAR0QZX",
    "No log lines matched the filter \"QZXVAR0QZX\" [QZXVAR1QZX].":
        "لا توجد أسطر سجل تطابق عامل التصفية \"QZXVAR0QZX\" [QZXVAR1QZX].",
    "Wi-Fi QR URI: QZXVAR0QZX": "Wi-Fi QR URI: QZXVAR0QZX",
  },
  "tr": {
    "⚠ Notice: QZXVAR0QZX": "⚠ Uyarı: QZXVAR0QZX",
    "No log lines matched the filter \"QZXVAR0QZX\" [QZXVAR1QZX].":
        "\"QZXVAR0QZX\" [QZXVAR1QZX] filtresiyle eşleşen günlük satırı yok.",
    "Wi-Fi QR URI: QZXVAR0QZX": "Wi-Fi QR URI: QZXVAR0QZX",
  },
  "es": {
    "⚠ Notice: QZXVAR0QZX": "⚠ Aviso: QZXVAR0QZX",
    "No log lines matched the filter \"QZXVAR0QZX\" [QZXVAR1QZX].":
        "Ninguna línea de registro coincidió con el filtro \"QZXVAR0QZX\" [QZXVAR1QZX].",
    "Wi-Fi QR URI: QZXVAR0QZX": "Wi-Fi QR URI: QZXVAR0QZX",
  },
  "fr": {
    "⚠ Notice: QZXVAR0QZX": "⚠ Remarque : QZXVAR0QZX",
    "No log lines matched the filter \"QZXVAR0QZX\" [QZXVAR1QZX].":
        "Aucune ligne de journal ne correspond au filtre \"QZXVAR0QZX\" [QZXVAR1QZX].",
    "Wi-Fi QR URI: QZXVAR0QZX": "Wi-Fi QR URI : QZXVAR0QZX",
  },
  "de": {
    "⚠ Notice: QZXVAR0QZX": "⚠ Hinweis: QZXVAR0QZX",
    "No log lines matched the filter \"QZXVAR0QZX\" [QZXVAR1QZX].":
        "Keine Protokollzeilen stimmten mit dem Filter „QZXVAR0QZX“ [QZXVAR1QZX] überein.",
    "Wi-Fi QR URI: QZXVAR0QZX": "Wi-Fi QR-URI: QZXVAR0QZX",
  },
  "it": {
    "⚠ Notice: QZXVAR0QZX": "⚠ Avviso: QZXVAR0QZX",
    "No log lines matched the filter \"QZXVAR0QZX\" [QZXVAR1QZX].":
        "Nessuna riga di registro corrisponde al filtro \"QZXVAR0QZX\" [QZXVAR1QZX].",
    "Wi-Fi QR URI: QZXVAR0QZX": "Wi-Fi URI QR: QZXVAR0QZX",
  },
  "ru": {
    "⚠ Notice: QZXVAR0QZX": "⚠ Примечание: QZXVAR0QZX",
    "No log lines matched the filter \"QZXVAR0QZX\" [QZXVAR1QZX].":
        "Ни одна строка журнала не соответствует фильтру «QZXVAR0QZX» [QZXVAR1QZX].",
    "Wi-Fi QR URI: QZXVAR0QZX": "Wi-Fi QR URI: QZXVAR0QZX",
  },
  "zh": {
    "⚠ Notice: QZXVAR0QZX": "⚠ 通知：QZXVAR0QZX",
    "No log lines matched the filter \"QZXVAR0QZX\" [QZXVAR1QZX].":
        "没有与过滤器“QZXVAR0QZX”[QZXVAR1QZX] 匹配的日志行。",
    "Wi-Fi QR URI: QZXVAR0QZX": "Wi-Fi QR URI：QZXVAR0QZX",
  },
};
