class AppConstants {
  static const VERSION = String.fromEnvironment('VERSION');
  static const Version RUNNING =
      VERSION == 'lazy' ? Version.LAZY : Version.WAIT;
  static const BASE_URL = 'https://api.spoonacular.com';
  static const API_KEY = 'YOUR_API_KEY';
}

enum Version {
  LAZY,
  WAIT,
}
