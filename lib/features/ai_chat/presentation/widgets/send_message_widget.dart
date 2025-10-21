
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';

class SendMessageWidget extends StatelessWidget {
  const SendMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text('Type your message here ..'),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(83, 177, 176, 172),
              ),
              height: 55,
            ),
          ),
          SizedBox(width: 5),
          Container(
            padding: EdgeInsets.only(left: 4),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColors.primary.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Transform.rotate(
              angle: 320 * (3.14 / 180),
              child: Icon(Icons.send, size: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
