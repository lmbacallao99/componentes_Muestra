import 'package:flutter/material.dart';

class AvatarPages extends StatelessWidget {
  const AvatarPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Pages'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('LM'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }
}
