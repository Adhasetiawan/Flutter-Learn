import 'package:flutter/material.dart';

class uiTemplate{
  boxButton(context, className, String text){
    return GestureDetector(
      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => className)),
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
        height: 100,
        width: 100,
        child: Card(
          shadowColor: Colors.black,
          elevation: 3,
          child: Center(child: Text(text, textAlign: TextAlign.center)),
        ),
      ),
    );
  }
}