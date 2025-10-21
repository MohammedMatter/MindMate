import 'package:firebase_auth/firebase_auth.dart';
import 'package:mind_mate_project/features/profile/domain/entities/user.dart';

class UserModel extends UserInformation {
  UserModel({
    required super.uid,
    required super.email,
    required super.name,
    required super.profileImage,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'uid': uid,
      'profileImage': profileImage,
    };
  }
  factory UserModel.fromMap(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'],
      email: json['email'],
      name: json['name'],
      profileImage: json['profileImage'],
    );
  }
}
