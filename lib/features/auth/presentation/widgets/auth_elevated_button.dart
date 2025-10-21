import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mind_mate_project/core/routes/app_router.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';
import 'package:mind_mate_project/features/auth/presentation/view_models/login_view_model.dart';
import 'package:mind_mate_project/features/auth/presentation/view_models/sign_up_view_model.dart';
import 'package:provider/provider.dart';

class AuthElevatedButton extends StatelessWidget {
  AuthElevatedButton({
    required this.name,
    required this.actionText,
    super.key,
    required this.loginKey,
    required this.email,
    required this.password,
  });
  String actionText;
  final GlobalKey<FormState> loginKey;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController? name;

  @override
  Widget build(BuildContext context) {
    return Consumer2<LoginViewModel, SignUpViewModel>(
      builder:
          (context, provLogin, provSignUp, child) => SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed:
                  provLogin.isShownSnakBar ||
                          provLogin.isLoading ||
                          provSignUp.isLoading ||
                          provSignUp.isShownSnakBar
                      ? null
                      : () async {
                        if (loginKey.currentState!.validate()) {
                          if (actionText == 'Sign Up') {
                            await provSignUp.signUp(
                              email: email.text,
                              password: password.text,
                              name: name!.text,
                            );
                            if (provSignUp.errorMessage.isEmpty) {
                              GoRouter.of(
                                context,
                              ).pushReplacementNamed(AppRouter.mainLayoutView);
                            } else {
                              provSignUp.toogleShowSnakBar(true);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(
                                    SnackBar(
                                      showCloseIcon: true,

                                      onVisible: () {
                                        provSignUp.toogleShowSnakBar(true);
                                      },
                                      backgroundColor: const Color.fromARGB(
                                        255,
                                        206,
                                        68,
                                        64,
                                      ),
                                      content: Text(
                                        provSignUp.errorMessage,
                                        style: AppStyle.body.copyWith(
                                          color: const Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255,
                                          ),
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ),
                                  )
                                  .closed
                                  .then((value) {
                                    provSignUp.toogleShowSnakBar(false);
                                  });
                            }
                          }
                          if (actionText == 'Login') {
                            final user = await provLogin.signIn(
                              email.text,
                              password.text,
                            );

                            if (provLogin.errorMessage.isEmpty) {
                              GoRouter.of(
                                context,
                              ).pushReplacementNamed(AppRouter.mainLayoutView);
                            } else {
                              provLogin.toogleShowSnakBar(true);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(
                                    SnackBar(
                                      onVisible: () {
                                        provLogin.toogleShowSnakBar(true);
                                      },
                                      showCloseIcon: true,
                                      backgroundColor: const Color.fromARGB(
                                        255,
                                        206,
                                        68,
                                        64,
                                      ),
                                      content: Text(
                                        provLogin.errorMessage,
                                        style: AppStyle.body.copyWith(
                                          color: const Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255,
                                          ),
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ),
                                  )
                                  .closed
                                  .then((value) {
                                    provLogin.toogleShowSnakBar(false);
                                  });
                            }
                          }
                        }
                      },
              child: Text(actionText),
            ),
          ),
    );
  }
}
