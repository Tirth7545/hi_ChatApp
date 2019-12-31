import 'package:flutter/material.dart';
import 'chat_message.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _message = <ChatMessage>[];



  void _handleSubmitted(String text) {
    _textEditingController.clear();

    ChatMessage message = new ChatMessage(
      text: text,
    );
    setState(() {
      _message.insert(0, message);
    });
  }

  final TextEditingController _textEditingController =
      new TextEditingController();

  Widget _textComposerWidget() {
    return new IconTheme(
      data: new IconThemeData(color: Colors.blue),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: <Widget>[
            new Flexible(
                child: new TextField(
                  decoration:   new InputDecoration.collapsed(hintText: "Send a Message"),
                  controller: _textEditingController,
                  onSubmitted: _handleSubmitted,
                )
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              child: IconButton(
                  icon: Icon(Icons.send,),
                  onPressed: ()=>  _handleSubmitted(_textEditingController.text)),

            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding: new EdgeInsets.all(8),
            reverse: true,
            itemBuilder: (_,int index) => _message[index],
            itemCount: _message.length,
          ),
        ),
        Divider(
          height: 1,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
