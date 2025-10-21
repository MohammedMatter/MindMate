import 'package:mind_mate_project/core/helper/regexp_patterns.dart';

abstract class Validator {
  static String? validateEmailSignUp(String email) {
    if (email.isEmpty) {
      return 'Field is Required';
    }
    RegExp regExp = RegExp(RegexPatterns.email);
    if (!regExp.hasMatch(email)) {
      return 'Enter a valid email !';
    }
    return null;
  }

  static String? validateEmailLogin(String email) {
    if (email.isEmpty) {
      return 'Field is Required';
    }

    return null;
  }

  static String? validatePasswordSignUp(String password) {
    if (password.isEmpty) {
      return 'Field is Required';
    }
    RegExp regExp = RegExp(RegexPatterns.password);
    if (!regExp.hasMatch(password)) {
      return 'Password must be at least 6 chars \nand contain a number!';
    }
    return null;
  }

  static String? validatePasswordLogin(String password) {
    if (password.isEmpty) {
      return 'Field is Required';
    }

    return null;
  }

  static String? validateConfirmPassword({
    required String confirmPassword,
    required String password,
  }) {
    if (confirmPassword.isEmpty) {
      return 'Field is Required';
    }
    if (confirmPassword != password) {
      return 'Password not match';
    }
    return null;
  }

  static String? validateName(String name) {
    if (name.isEmpty) {
      return 'Field is Required';
    }
    return null;
  }
}
