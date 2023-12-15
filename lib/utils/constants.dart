class AppConstants {
  // API Endpoints
  static const String baseURL = 'https://as-uat.console.chargemod.com/temporary/sde1flutterATSR';
  static const String loginURL = '$baseURL/login';
  static const String logoutURL = '$baseURL/logout';
  static const String userDataURL = '$baseURL/userData';

  // API Headers
  static const Map<String, String> jsonHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // Error Messages
  static const String connectionErrorMessage = 'Connection failed';
  static const String genericErrorMessage = 'An error occurred';

  // App-specific Constants
  static const int maxUsernameLength = 20;
  static const int maxPasswordLength = 30;
  static const String defaultLocale = 'en_US';
}
