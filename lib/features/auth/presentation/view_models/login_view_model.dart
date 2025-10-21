import 'package:flutter/material.dart';

import 'package:mind_mate_project/features/auth/domain/use_cases/sign_in_use_cases.dart';

class LoginViewModel extends ChangeNotifier {
  String errorMessage = '';
  bool isLoading = false;
  bool _isShown = false;
  bool _isShownSnakBar = false;
  bool _isRemembered = false;
  get isShown => _isShown;
  get isShownSnakBar => _isShownSnakBar;
  get isRemembered => _isRemembered;

  SignInUseCases signInUseCases;
  LoginViewModel({required this.signInUseCases});

  void toogleShowSnakBar(bool isShown) {
    _isShownSnakBar = isShown;
    notifyListeners();
  }

  Future signIn(String email, String password) async {
    notifyListeners();
    isLoading = true;
    final user = await signInUseCases.call(email, password);
    final result = await user.fold(
      (failure) async {
        errorMessage = failure.message;
        return errorMessage;
      },
      (UserModel) async {
        errorMessage = '';
        return user;
      },
    );
    await Future.delayed(Duration(seconds: 2));
    isLoading = false;
    notifyListeners();
    return result;
  }

  void tooglePasswordVisibilty() {
    _isShown = !_isShown;
    notifyListeners();
  }

  void toogleIsRemembered() {
    _isRemembered = !_isRemembered;
    notifyListeners();
  }
}
