import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://valoranto.com/wp-content/uploads/2022/10/killjoy_valorant_icon_2245.webp'),
          ),
        ),
        title: const Text('KillJoy'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context,index) {
                  return (index % 2 == 0)
                    ? const HerMessageBubble()
                  : const MyMessageBubble();
                  
                },
              ),
            ),
            /// box_text
            const MessageFieldBox(),
                      ],
        ),
      ),
    );
  }
}
