import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class blocPubDev extends StatelessWidget {
  const blocPubDev({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var bloc = BlocProvider.of<colorBlocLib>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // FloatingActionButton(onPressed: ()=> bloc.add(colorEvent.to_Amber), backgroundColor: Colors.amber,),
          SizedBox(width: 10),
          // FloatingActionButton(onPressed: ()=> bloc.add(colorEvent.to_lightBlue), backgroundColor: Colors.lightBlue,),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xfff5f5f5),
          ),
          SafeArea(
              child: Center(
                child: Column(
                  children: <Widget>[
                    // BlocBuilder<colorBlocLib, Color>(
                    //   builder: (context, currentColor) => AnimatedContainer(
                    //     margin: EdgeInsets.all(10),
                    //     width: 100,
                    //     height: 100,
                    //     color: currentColor,
                    //     duration: Duration(milliseconds: 500),
                    //   ),
                    // )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

