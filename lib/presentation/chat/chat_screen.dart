import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.5),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://valoranto.com/wp-content/uploads/2022/10/killjoy_valorant_icon_2245.webp'),),
        ),
        title: Text('KillJoy'),
        centerTitle: true,
      ),
    );
  }
}
