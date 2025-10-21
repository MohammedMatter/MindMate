// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:mind_mate_project/features/auth/domain/use_cases/sign_up_use_cases.dart';

class SignUpViewModel extends ChangeNotifier {
  String errorMessage = '';
  bool isLoading = false;
  bool _isShownSnakBar = false;
  SignUpUseCases signUpUseCases;
  bool _isShown = false;
  SignUpViewModel({required this.signUpUseCases});
  get isShownSnakBar => _isShownSnakBar;
  get isShown => _isShown;

  void tooglePasswordVisibilty() {
    _isShown = !_isShown;
    notifyListeners();
  }

  void toogleShowSnakBar(bool isShown) {
    _isShownSnakBar = isShown;
    notifyListeners();
  }

  Future signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    notifyListeners();
    isLoading = true;
    final result = await signUpUseCases.call(email, password, name);
    result.fold((failure) async {
      errorMessage = failure.message;
    }, (_) async {});
    await Future.delayed(Duration(seconds: 2));
    isLoading = false;
    notifyListeners();
    return result;
  }
}
