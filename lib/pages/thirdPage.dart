import 'package:first_application/model/getMany_model.dart';
import 'package:first_application/model/sample.dart';
import 'package:flutter/material.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({Key key}) : super(key: key);

  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  String listUser = "Daftar User Kosong";
  var page = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   dataController().mappingUser(page.text = '2');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            SafeArea(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: page,
                        decoration: InputDecoration(label: Text('Page')),
                      ),
                    ),
                    Center(
                      child: Container(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: Text(listUser, textAlign: TextAlign.center)
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text('Get Many'))
          ],
        ))
      ],
    ));
  }
}
