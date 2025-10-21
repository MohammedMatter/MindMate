import 'package:flutter/material.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: width * 0.30,
          child: Divider(
            color: const Color.fromARGB(255, 221, 216, 216),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text('or'),
        ),
    
        SizedBox(
          width: width * 0.30,
          child: Divider(
            color: const Color.fromARGB(255, 221, 216, 216),
          ),
        ),
      ],
    );
  }
}
