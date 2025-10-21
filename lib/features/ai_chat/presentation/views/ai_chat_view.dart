import 'package:flutter/material.dart';
import 'package:mind_mate_project/features/ai_chat/presentation/widgets/ai_chat_body.dart';


class AiChatView extends StatelessWidget {
  const AiChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ai Chat Assistant')),
      body: AiChatBody(),
    );
  }
}

