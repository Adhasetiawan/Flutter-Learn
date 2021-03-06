import 'package:first_application/model/getSingle_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class seoncdPage extends StatefulWidget {
  const seoncdPage({Key key}) : super(key: key);

  @override
  _seoncdPageState createState() => _seoncdPageState();
}

class _seoncdPageState extends State<seoncdPage> {
  getSingleUser user = null;
  TextEditingController idUser = TextEditingController();

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
                        controller: idUser,
                        decoration: InputDecoration(label: Text('Id User')),
                      ),
                    ),
                    Center(
                      child: Container(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: Text((user != null)
                              ? "${user.id} | ${user.email} | ${user.firstName}"
                              : 'Data kosong', textAlign: TextAlign.center,)),
                    ),
                    ElevatedButton(
                        onPressed: () => getSingleUser
                            .apiRunningGet(idUser.text)
                            .then((value) {
                          user = value;
                          setState(() {});
                        }),
                        child: Text('Get Single'))
                  ],
        ))
      ],
    ));
  }
}
