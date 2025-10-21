

import 'package:dartz/dartz.dart';
import 'package:mind_mate_project/core/errors/exceptions.dart';
import 'package:mind_mate_project/core/errors/failure.dart';
import 'package:mind_mate_project/features/auth/domain/repositories/auth_repository.dart';

class SignUpUseCases {
  AuthRepository authRepository;
  SignUpUseCases({required this.authRepository});

  Future<Either<Failure, Unit>> call(email, password, name) async {
    try {
      await authRepository.signUp(email, password, name);
      return right(unit);
    } on FirebaseAuthExceptionHandler catch (e) {
     return left(FirebaseAuthFailure(e.message));
    }
  }
}
