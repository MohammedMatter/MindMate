import 'package:flutter/material.dart';

import 'package:mind_mate_project/features/auth/presentation/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController name = TextEditingController();
    GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
    return Scaffold(
      body: SignUpViewBody(signUpKey: signUpKey, name: name, email: email, password: password),
    );
  }
}
