import 'package:first_application/pages/fifthPage.dart';
import 'package:first_application/pages/firstPage.dart';
import 'package:first_application/pages/fourthPage.dart';
import 'package:first_application/pages/secondPage.dart';
import 'package:first_application/pages/thirdPage.dart';
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
            Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text('Sample online & offline data request', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blue),)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => firstPage()));},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 5, 5),
                        height: 100,
                        width: 100,
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Center(child: Text('Post Data', textAlign: TextAlign.center)),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => seoncdPage())),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                        height: 100,
                        width: 100,
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Center(child: Text('Get Data', textAlign: TextAlign.center)),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => thirdPage())),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
                        height: 100,
                        width: 100,
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Center(child: Text('Get Many Data', textAlign: TextAlign.center)),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => fourthPage())),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 10, 10),
                        height: 100,
                        width: 100,
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Center(child: Text('Shared Preference', textAlign: TextAlign.center,)),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => fifthPage())),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
                        height: 100,
                        width: 100,
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Center(child: Text('State Management', textAlign: TextAlign.center)),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 10, 10),
                        height: 100,
                        width: 100,
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 3,
                          child: Center(child: Text('Provide State Management', textAlign: TextAlign.center,)),
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
