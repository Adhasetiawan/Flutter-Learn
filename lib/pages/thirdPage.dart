import 'package:flutter/material.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({Key key}) : super(key: key);

  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Profile Page', style: TextStyle(fontSize: 20),),),
    );
  }
}
