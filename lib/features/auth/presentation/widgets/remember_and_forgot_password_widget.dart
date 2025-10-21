import 'package:flutter/material.dart';

import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/features/auth/presentation/view_models/login_view_model.dart';
import 'package:provider/provider.dart';


class RememberAndForgotPasswordWidget extends StatelessWidget {
  const RememberAndForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Transform.scale(
              scale:
                  MediaQuery.of(context).size.width < 450
                      ? 0.8
                      : 1.0,
              child: Consumer<LoginViewModel>(
                builder:
                    (context, provLogin, child) => Switch(
                      value: provLogin.isRemembered,
                      onChanged: (value) {
                        provLogin.toogleIsRemembered();
                      },
                      activeColor: AppColors.primary,
                    ),
              ),
            ),
            Text('Remember me'),
          ],
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'Forget Passsword ?',
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}