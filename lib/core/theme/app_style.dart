import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';

class AppStyle {
  static const TextStyle heading = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins-SemiBold',
  );
  static const TextStyle supHeading = TextStyle(
    fontSize: 14,
    fontFamily: 'Montserrat',
    color: AppColors.disabled,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle body = TextStyle(
    fontSize: 13,
    fontFamily: 'Poppins-Medium',
    fontWeight: FontWeight.bold,
  );
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
