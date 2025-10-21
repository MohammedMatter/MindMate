// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:mind_mate_project/core/errors/exceptions.dart';
import 'package:mind_mate_project/core/errors/failure.dart';
import 'package:mind_mate_project/features/auth/domain/repositories/auth_repository.dart';
import 'package:mind_mate_project/features/profile/data/models/user_model.dart';

class SignInUseCases {
  AuthRepository authRepository;
  SignInUseCases({required this.authRepository});
  Future<Either<Failure, UserModel>> call(String email, String password) async {
    try {
      return await authRepository.signIn(email, password);
    } on FirebaseAuthExceptionHandler catch (e) {
      switch (e.message) {
        case 'invalid-credential':
          return left(FirebaseAuthFailure('Incorrect password or email'));
        case 'invalid-email':
          return left(FirebaseAuthFailure('invalid-email'));

        default:
          return left(
            FirebaseAuthFailure('Something went wrong, please try again'),
          );
      }
    }
  }
}
