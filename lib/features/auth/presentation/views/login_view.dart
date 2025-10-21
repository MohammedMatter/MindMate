import 'package:flutter/material.dart';

import 'package:mind_mate_project/features/auth/presentation/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    GlobalKey<FormState> loginKey = GlobalKey<FormState>();
    return Scaffold(
      body: LoginViewBody(loginKey: loginKey, email: email, password: password),
    );
  }
}
