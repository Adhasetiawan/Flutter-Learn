import 'package:first_application/pages/SixPage.dart';
import 'package:first_application/pages/bloacState.dart';
import 'package:first_application/pages/fifthPage.dart';
import 'package:first_application/pages/firstPage.dart';
import 'package:first_application/pages/fourthPage.dart';
import 'package:first_application/pages/secondPage.dart';
import 'package:first_application/pages/thirdPage.dart';
import 'package:first_application/uiTemplate.dart';
import 'package:flutter/material.dart';

class basePage extends StatefulWidget {
  const basePage({Key key}) : super(key: key);

  @override
  _basePageState createState() => _basePageState();
}

class _basePageState extends State<basePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              color: Color(0xfff5f5f5),
            ),
            ListView(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Align(alignment: Alignment.center, child: Text('Sample online & offline data request', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blue),))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    uiTemplate().boxButton(context, firstPage(), 'Post Data'),
                    uiTemplate().boxButton(context, seoncdPage(), 'Get Data'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    uiTemplate().boxButton(context, thirdPage(), 'Get All Data'),
                    uiTemplate().boxButton(context, fourthPage(), 'Shared Preference'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    uiTemplate().boxButton(context, fifthPage(), 'State Management'),
                    uiTemplate().boxButton(context, sixPage(), 'Multi State Management'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    uiTemplate().boxButton(context, blocState(), 'Bloc State'),
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 10, 10),
                        height: 100,
                        width: 100,
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Center(child: Text('Bloc', textAlign: TextAlign.center,)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
