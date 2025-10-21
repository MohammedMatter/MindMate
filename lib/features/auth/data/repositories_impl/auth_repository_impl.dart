import 'package:dartz/dartz.dart';
import 'package:mind_mate_project/core/errors/failure.dart';
import 'package:mind_mate_project/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:mind_mate_project/features/auth/domain/repositories/auth_repository.dart';
import 'package:mind_mate_project/features/profile/data/models/user_model.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRemoteDataSource _authRemoteDataSource = AuthRemoteDataSource();
  @override
  Future<Either<Failure , Unit>> signUp(String email, String password, String name) {
    return _authRemoteDataSource.signUp(email, password, name);
  }

  Future<Either<Failure , UserModel>> signIn(String email, String password) {
    return _authRemoteDataSource.signIn(email, password);
  }
}
