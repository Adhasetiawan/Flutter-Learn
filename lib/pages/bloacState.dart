import 'package:first_application/bloc/colorBloc.dart';
import 'package:flutter/material.dart';

class blocState extends StatefulWidget {
  const blocState({Key key}) : super(key: key);

  @override
  _blocStateState createState() => _blocStateState();
}

class _blocStateState extends State<blocState> {

  colorBloc bloc = colorBloc();

  @override
  void dispose(){
    bloc.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(onPressed: () => bloc.eventSink.add(colorEvent.to_amber), backgroundColor: Colors.amber,),
          SizedBox(width: 10),
          FloatingActionButton(onPressed: ()=> bloc.eventSink.add(colorEvent.to_lightBlue), backgroundColor: Colors.lightBlue,),
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
                    StreamBuilder(
                      stream: bloc.stateStream,
                      initialData: Colors.amber,
                      builder: (context, snapshot) => AnimatedContainer(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        color: snapshot.data,
                        duration: Duration(milliseconds: 500),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
