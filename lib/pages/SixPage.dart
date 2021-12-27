import 'package:first_application/stateStuff/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class sixPage extends StatelessWidget {
  const sixPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<money>(create: (context) => money()),
        ChangeNotifierProvider<chart>(create: (context) => chart()),
      ],
      child: Scaffold(
          floatingActionButton: Consumer<money>(
            builder: (context, uang, _) => Consumer<chart>(
              builder: (context, carts, _) => FloatingActionButton(
                onPressed: () {
                  if(uang.ambilUang >= 500){
                    carts.ambilJumlah += 1;
                    uang.ambilUang -= 500;
                  }
                },
                child: Icon(CupertinoIcons.shopping_cart),
                backgroundColor: Colors.purple,
              ),
            ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Balanced'),
                    Container(
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.purple, width: 2)),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<money>(builder: (context, uang, _) => Text(uang.ambilUang.toString(), style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w700),)),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 30,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purple, width: 2)),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<chart>(
                      builder: (context, carts, _) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Apel (500) x ' + carts.ambilJumlah.toString(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
                          Text((500 * carts.ambilJumlah).toString(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
