// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mind_mate_project/core/helper/screen_size.dart';
import 'package:mind_mate_project/core/theme/app_style.dart';

// ignore: must_be_immutable
class CustomModeEmojeWidget extends StatefulWidget {
  String image;
  String mode;

  CustomModeEmojeWidget({
    Key? key,
    required this.image,
    required this.mode,

  }) : super(key: key);

  @override
  State<CustomModeEmojeWidget> createState() => _CustomModeEmojeWidgetState();
}

class _CustomModeEmojeWidgetState extends State<CustomModeEmojeWidget> {
  bool isSelected = false;

 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          height: ScreenSize.h(context) * 0.05,
          width: ScreenSize.w(context) * 0.10,
          child: Image.asset(widget.image , fit: BoxFit.fill,),
        ),
        Text(widget.mode, style: AppStyle.supHeading),
      ],
    );
  }
}
