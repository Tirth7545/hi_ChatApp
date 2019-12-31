import 'package:flutter/material.dart';





const String _name ="Tirthraj";

class ChatMessage extends StatelessWidget {
  final String text;

 ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: new CircleAvatar(
              child: new Text(_name[0]),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name,style: Theme.of(context).textTheme.subhead,),
              new Container(
                margin: const EdgeInsets.only(top: 5),
                child: Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}
