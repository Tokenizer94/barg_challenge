abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    "en_US": en_US,
  };
}

/// For new language, add a `Map object` like below and add it to [translationsKeys]
final Map<String, String> en_US = {
  /// Short Texts
  'app_title': 'Barg',
  /// Long Texts
  'app_description': '',
};