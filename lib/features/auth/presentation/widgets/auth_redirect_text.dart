import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mind_mate_project/core/routes/app_router.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/features/auth/presentation/view_models/login_view_model.dart';
import 'package:mind_mate_project/features/auth/presentation/view_models/sign_up_view_model.dart';
import 'package:provider/provider.dart';

class AuthRedirectText extends StatelessWidget {
  AuthRedirectText({
    required this.onTap,
    required this.actionText,
    required this.labelText,
    super.key,
  });
  String actionText;
  String labelText;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(actionText),
        SizedBox(width: 15),
        Consumer2<LoginViewModel, SignUpViewModel>(
          builder:
              (context, provLogin, provSignUp, child) => InkWell(
                onTap:
                    provLogin.isShownSnakBar ||
                            provLogin.isLoading ||
                            provSignUp.isLoading ||
                            provSignUp.isShownSnakBar
                        ? null
                        : onTap,
                child: Text(
                  labelText,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        ),
      ],
    );
  }
}
