import 'package:flutter/material.dart';
import 'package:mind_mate_project/features/ai_chat/presentation/widgets/ai_message_widget.dart';
import 'package:mind_mate_project/features/ai_chat/presentation/widgets/send_message_widget.dart';
import 'package:mind_mate_project/features/ai_chat/presentation/widgets/user_message_widget.dart';

class AiChatBody extends StatelessWidget {
  const AiChatBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          AiMessageWidget(),
          SizedBox(height: 30),
          UserMessageWidget(),
          Spacer(),
          SendMessageWidget(),
        ],
      ),
    );
  }
}

