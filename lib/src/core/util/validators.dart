import 'package:get/get.dart';

/// All [TextField] validators are here
class Validators {
  /// Check if TextField is empty
  static String? emptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'required'.tr;
    }
  }

  /// Check if TextField text has the required `length`
  static String? lengthValidator(String value, int minLength) {
    if (value.length < minLength) {
      return "${'at_least'.tr} $minLength ${'char_required'.tr}";
    }
  }

  /// Check if inserted text has all conditions for the [username]
  static String? usernameValidator(String? value) {
    String? res = emptyValidator(value);
    return res ??= lengthValidator(value!, 3);
  }

  /// Check if inserted text has all conditions for the [password]
  static String? passwordValidator(String? value) {
    String? res = emptyValidator(value);
    return res ??= lengthValidator(value!, 8);
  }

}
