import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mind_mate_project/core/helper/input_decoration.dart';
import 'package:mind_mate_project/core/helper/screen_size.dart';
import 'package:mind_mate_project/core/helper/validator.dart';
import 'package:mind_mate_project/core/routes/app_router.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/features/auth/presentation/view_models/sign_up_view_model.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/auth_elevated_button.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/auth_redirect_text.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/confirm_pass_widget.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/login_section_widget.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/or_divider_widget.dart';
import 'package:provider/provider.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
    required this.signUpKey,
    required this.name,
    required this.email,
    required this.password,
  });

  final GlobalKey<FormState> signUpKey;
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpViewModel>(
      builder:
          (context, provSignUp, child) => Stack(
            children: [
              Form(
                key: signUpKey,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenSize.w(context) / 12,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo/logo.png',
                            height: ScreenSize.h(context) * 0.18,
                          ),
                          TextFormField(
                            validator: (name) => Validator.validateName(name!),
                            controller: name,
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.black),
                              filled: true,
                              fillColor: AppColors.inputFill,
                              hintText: 'Name',
                              enabledBorder: appOutLinedBorder(),
                              focusedBorder: appOutLinedBorder(),
                            ),
                          ),
                          SizedBox(height: ScreenSize.h(context) * 0.02),

                          LoginSectionWidget(
                            emailValidation:
                                (p0) =>
                                    Validator.validateEmailSignUp(email.text),
                            passValidation:
                                (p0) => Validator.validatePasswordSignUp(
                                  password.text,
                                ),
                            signUpKey,
                            ScreenSize.h(context),
                            ScreenSize.w(context),
                            email,
                            password,
                          ),
                          SizedBox(height: ScreenSize.h(context) * 0.02),
                               ConfrimPassWidget(password: password) , 
                          SizedBox(height: ScreenSize.h(context) * 0.04),

                          AuthElevatedButton(
                            name: name,
                            actionText: 'Sign Up',
                            loginKey: signUpKey,
                            email: email,
                            password: password,
                          ),
                          SizedBox(height: ScreenSize.h(context) * 0.01),
                          OrDividerWidget(width: ScreenSize.w(context)),
                          SizedBox(height: ScreenSize.h(context) * 0.01),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                const Color.fromARGB(255, 119, 119, 116),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/logo/google icon.png',
                                  height: ScreenSize.h(context) * 0.04,
                                ),
                                Text('Sign up with Google'),
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenSize.h(context) * 0.02),
                          AuthRedirectText(
                            onTap: () {
                              GoRouter.of(
                                context,
                              ).pushReplacementNamed(AppRouter.loginView);
                            },
                            actionText: 'already have an account ?',
                            labelText: 'Sign in',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child:
                    provSignUp.isLoading
                        ? CircularProgressIndicator(color: AppColors.primary)
                        : SizedBox.shrink(),
              ),
            ],
          ),
    );
  }
}
