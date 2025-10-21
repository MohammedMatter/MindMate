import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/helper/input_decoration.dart';
import 'package:mind_mate_project/core/helper/regexp_patterns.dart';
import 'package:mind_mate_project/core/helper/validator.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/features/auth/presentation/view_models/login_view_model.dart';

import 'package:provider/provider.dart';

class LoginSectionWidget extends StatelessWidget {
  LoginSectionWidget(
    this.formKey,
    this.height,
    this.width,
    this.email,
    this.password, {
    required this.emailValidation,
    required this.passValidation,
  });
  double height;
  double width;
String  ? Function(String?) emailValidation;
 String  ?Function(String?) passValidation;
  GlobalKey<FormState> formKey;
  TextEditingController email;
  TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          validator: emailValidation,
          controller: email,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.inputFill,
            hintText: 'Email',
            enabledBorder: appOutLinedBorder(),
            focusedBorder: appOutLinedBorder(),
          ),
        ),
        SizedBox(height: height * 0.02),
        Consumer<LoginViewModel>(
          builder:
              (context, provLogin, child) => TextFormField(
                validator:passValidation,
                controller: password,
                obscureText: provLogin.isShown ? true : false,
                decoration: InputDecoration(
                  errorStyle: TextStyle(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      provLogin.tooglePasswordVisibilty();
                    },
                    icon:
                        provLogin.isShown
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                  ),
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: AppColors.inputFill,
                  hintText: 'Password',
                  enabledBorder: appOutLinedBorder(),
                  focusedBorder: appOutLinedBorder(),
                ),
              ),
        ),
      ],
    );
  }
}
