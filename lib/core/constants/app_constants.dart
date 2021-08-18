class AppConstants {
  static const VERSION = String.fromEnvironment('VERSION');
  static const Version RUNNING =
      VERSION == 'lazy' ? Version.LAZY : Version.WAIT;
}

enum Version {
  LAZY,
  WAIT,
}
