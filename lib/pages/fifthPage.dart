import 'package:first_application/stateStuff/appColor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class fifthPage extends StatelessWidget {
  const fifthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<appColor>(
      create: (context) => appColor(),
      child: Scaffold(
        appBar: AppBar(
          title: Consumer<appColor>(
            builder: (context, appColors, _)=> Text(
              'The color can be change',
              style: TextStyle(color: appColors.color),
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Color(0xfff5f5f5),
            ),
            SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Consumer<appColor>(
                        builder:(context, appColors, _) => AnimatedContainer(
                          margin: EdgeInsets.all(5),
                          width: 100,
                          height: 100,
                          color: appColors.color,
                          duration: Duration(milliseconds: 500),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(margin: EdgeInsets.all(5), child: Text('Amber')),
                          Consumer<appColor>(
                            builder: (context, appColors, _) => Switch(
                              value: appColors.isLB,
                              onChanged: (newValue){
                                appColors.isLB = newValue;
                              },
                            ),
                          ),
                          Container(margin: EdgeInsets.all(5), child: Text('Light blue'))
                        ],
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
