import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/helper/screen_size.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo/logo.png',
      height: ScreenSize.h(context) * 0.18,
    );
  }
}
