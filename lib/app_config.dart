var this_year = DateTime.now().year.toString();

class AppConfig {
  static String copyright_text =
      "@ SAMIMIE " + this_year; //this shows in the splash screen
  static String app_name =
      "SAMIMIE eCommerce seller app"; //this shows in the splash screen
  static String purchase_code =
      "a18a5829-7c69-4234-96d8-4e4d78f9af1e"; //enter your purchase code for the app from codecanyon
  //static String purchase_code = ""; //enter your purchase code for the app from codecanyon

  //configure this
  static const bool HTTPS = false;

  //

  //

  //configure this

  // static const DOMAIN_PATH = "192.168.88.193/ecommerce"; //inside a folder
  static const DOMAIN_PATH = "samimie.com"; // directly inside the public folder

  //do not configure these below
  static const String API_ENDPATH = "api/v2";
  static const String PUBLIC_FOLDER = "public";
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String SELLER_PREFIX = "seller";
  static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
  static const String BASE_URL = "${RAW_BASE_URL}/${API_ENDPATH}";
  static const String BASE_URL_WITH_PREFIX = "${BASE_URL}/${SELLER_PREFIX}";
}
