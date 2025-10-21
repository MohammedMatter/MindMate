import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mind_mate_project/core/helper/screen_size.dart';
import 'package:mind_mate_project/core/helper/validator.dart';
import 'package:mind_mate_project/core/routes/app_router.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/features/auth/presentation/view_models/login_view_model.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/auth_redirect_text.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/auth_elevated_button.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/login_section_widget.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/login_with_google_widget.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/logo_widget.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/or_divider_widget.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/remember_and_forgot_password_widget.dart';
import 'package:mind_mate_project/features/auth/presentation/widgets/welcome_widget.dart';
import 'package:provider/provider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
    required this.loginKey,
    required this.email,
    required this.password,
  });

  final GlobalKey<FormState> loginKey;
  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder:
          (context, provLogin, child) => Stack(
            children: [
              Form(
                key: loginKey,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenSize.w(context) / 12,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LogoWidget(),
                          WelcomeWidget(),
                          LoginSectionWidget(
                            emailValidation:
                                (_) => Validator.validateEmailLogin(email.text),
                            passValidation:
                                (_) => Validator.validatePasswordLogin(
                                  password.text,
                                ),
                            loginKey,
                            ScreenSize.h(context),
                            ScreenSize.w(context),
                            email,
                            password,
                          ),
                          SizedBox(height: ScreenSize.h(context) * 0.01),
                          RememberAndForgotPasswordWidget(),
                          AuthElevatedButton(
                            name: null,
                            actionText: 'Login',
                            loginKey: loginKey,
                            email: email,
                            password: password,
                          ),
                          SizedBox(height: ScreenSize.h(context) * 0.01),
                          OrDividerWidget(width: ScreenSize.w(context)),
                          SizedBox(height: ScreenSize.h(context) * 0.01),
                          LoginWithGoogleWidget(),
                          SizedBox(height: ScreenSize.h(context) * 0.02),
                          AuthRedirectText(
                            onTap: () {
                              GoRouter.of(
                                context,
                              ).pushReplacementNamed(AppRouter.signUpView);
                            },
                            actionText: 'Dont have an account ?',
                            labelText: 'Sign up now',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child:
                    provLogin.isLoading
                        ? CircularProgressIndicator(color: AppColors.primary,)
                        : SizedBox.shrink(),
              ),
            ],
          ),
    );
  }
}
