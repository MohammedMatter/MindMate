import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mind_mate_project/core/errors/exceptions.dart';
import 'package:mind_mate_project/core/errors/failure.dart';
import 'package:mind_mate_project/features/profile/data/models/user_model.dart';

class AuthRemoteDataSource {
  Future<Either<Failure, Unit>> signUp(
    String email,
    String password,
    String name,
  ) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
    _auth = FirebaseAuth.instance;
    try {
      final _userCredintial = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = _userCredintial.user;

      final uid = user!.uid;

      final userModal = UserModel(
        email: user.email!,
        name: name,
        profileImage: 'assets/images/person_profile.png',
        uid: uid,
      );
      await _firebaseFirestore
          .collection('users')
          .doc(uid)
          .set(userModal.toMap());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      log('${e.code}1111111111111111');
      throw FirebaseAuthExceptionHandler(message: e.code);
    }
  }

  Future<Either<Failure, UserModel>> signIn(
    String email,
    String password,
  ) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
    _auth = FirebaseAuth.instance;
    try {
      final _userCredintial = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final uid = _userCredintial.user!.uid;
      final doc = await _firebaseFirestore.collection('users').doc(uid).get();
      final data = doc.data();
      return right(UserModel.fromMap(data!));
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthExceptionHandler(message: e.code);
    }
  }
}
