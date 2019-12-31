import 'package:flutter/material.dart';
import 'chatscreen.dart';
import 'chat_message.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi Chat"),

      ),
      body: new ChatScreen(),
    )  ;
  }
}
