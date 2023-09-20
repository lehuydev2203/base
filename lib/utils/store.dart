import 'package:shared_preferences/shared_preferences.dart';

class Store {
  /// The function `_parseEnum` converts an enum value to a string by splitting the value's string
  /// representation and returning the last part.
  ///
  /// Args:
  ///   storeKey (dynamic): The `storeKey` parameter is a dynamic variable, which means it can hold
  /// values of any type. In this case, it is expected to hold an enum value.
  ///
  /// Returns:
  ///   The last part of the string representation of the `storeKey` after splitting it by the '.'
  /// character.
  static String _parseEnum(dynamic storeKey) {
    return storeKey.toString().split('.').last;
  }

  /// The function sets a string value in shared preferences using a dynamic key.
  ///
  /// Args:
  ///   key (dynamic): The key parameter is a dynamic type, which means it can accept any type of value.
  /// It is used as a key to identify the value in the shared preferences.
  ///   value (String): The value parameter is a String that represents the value to be stored in the
  /// SharedPreferences.
  static Future<void> setString(dynamic key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_parseEnum(key), value);
  }

  /// The function `getString` retrieves a string value from SharedPreferences based on a given key.
  ///
  /// Args:
  ///   key (dynamic): The `key` parameter is a dynamic type, which means it can accept any type of
  /// value. It is used to identify the key for retrieving a value from the SharedPreferences.
  ///
  /// Returns:
  ///   The method is returning a `Future<String?>`.
  static Future<String?> getString(dynamic key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_parseEnum(key));
  }

  /// The function removes a string value from shared preferences using a given key.
  ///
  /// Args:
  ///   key (dynamic): The `key` parameter is a dynamic type, which means it can accept any type of
  /// value. It is used as a parameter to identify the key of the value that needs to be removed from
  /// the SharedPreferences.
  static Future<void> removeString(dynamic key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_parseEnum(key));
  }

  /// The function clears all data stored in the SharedPreferences.
  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
