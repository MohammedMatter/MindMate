abstract class Failure {
  String message;
  Failure(this.message);
}

class FirebaseAuthFailure extends Failure {
  FirebaseAuthFailure([String meesage = 'Firebase Auth Failure'])
    : super(meesage);
}
