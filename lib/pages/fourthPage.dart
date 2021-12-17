import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class fourthPage extends StatefulWidget {
  const fourthPage({Key key}) : super(key: key);

  @override
  _fourthPageState createState() => _fourthPageState();
}

class _fourthPageState extends State<fourthPage> {
  var inputSatu = TextEditingController();
  bool isOn = false;

  // cara safe data
  saveData()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('nama', inputSatu.text);
    pref.setBool('ison', isOn);
  }

  //cara load data
  Future<String> getSomething()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('nama') ?? 'Data kosong';
  }

  Future<bool> getSomethingAgain()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('ison') ?? false;
  }

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
                    controller: inputSatu,
                    decoration: InputDecoration(hintText: 'Type something'),
                  ),
                ),
                Switch(
                    value: isOn,
                    onChanged: (newValue) {
                      setState(() {
                        isOn = newValue;
                      });
                    }),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: ElevatedButton(
                              onPressed: () => saveData(), child: Text('Save'))),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: ElevatedButton(
                              onPressed: (){
                                getSomething().then((a) {
                                  inputSatu.text = a;
                                  setState(() {});
                                });
                                getSomethingAgain().then((b) {
                                  isOn = b;
                                  setState(() {});
                                });
                              }, child: Text('Load'))),
                    ],
                  ),
                )
              ],
            ))
      ],
        ));
  }
}
