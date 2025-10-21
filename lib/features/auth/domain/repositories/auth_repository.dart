import 'package:dartz/dartz.dart';
import 'package:mind_mate_project/core/errors/failure.dart';
import 'package:mind_mate_project/features/profile/data/models/user_model.dart';

abstract class AuthRepository {
  Future<Either<Failure , Unit>> signUp(String email , String password , String name) ; 
  Future<Either<Failure , UserModel>> signIn(String email , String password ) ; 
}