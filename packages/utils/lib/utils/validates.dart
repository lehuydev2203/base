class Validates {
  static const String _emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

 /// It checks if the input is a valid email address.
 /// 
 /// Args:
 ///   input (String): The input string to validate.
 /// 
 /// Returns:
 ///   A boolean value.
  static email(String input) {
    return RegExp(_emailRegex).hasMatch(input);
  }
}
