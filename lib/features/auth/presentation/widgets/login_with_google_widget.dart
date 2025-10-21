import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/helper/screen_size.dart';

class LoginWithGoogleWidget extends StatelessWidget {
  const LoginWithGoogleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
          Text('Continue with Google'),
        ],
      ),
    );
  }
}
