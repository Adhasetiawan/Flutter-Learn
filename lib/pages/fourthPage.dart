import 'package:flutter/material.dart';

class fourthPage extends StatefulWidget {
  const fourthPage({Key key}) : super(key: key);

  @override
  _fourthPageState createState() => _fourthPageState();
}

class _fourthPageState extends State<fourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xfff5f5f5),
          )
        ],
      )
    );
  }
}
