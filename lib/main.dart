import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[backgroundHeader(),ovoCash(), summaryCash()],
              ),
              ovoMenu(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget ovoMenu(){
  return Card(
    margin: EdgeInsets.only(top: 20,left: 15,bottom: 15,right: 15),
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      width: 370,
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.lightbulb_outline,color: Colors.deepOrangeAccent,),
                Divider(),
                Text('PLN',style: TextStyle(fontSize: 15,color: Colors.black),),
                Divider(),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.healing,color: Colors.green,),
                          Divider(),
                          Text('BPJS',style: TextStyle(fontSize: 15,color: Colors.black),)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.phonelink_ring,color: Colors.blueAccent,),
                Divider(),
                Text('Pulsa',style: TextStyle(fontSize: 15,color: Colors.black),),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.tv,color: Colors.red,),
                          Divider(),
                          Text('TV Kabel',style: TextStyle(fontSize: 15,color: Colors.black),)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.system_update_alt,color: Colors.green,),
                Divider(),
                Text('Paket Data',style: TextStyle(fontSize: 15,color: Colors.black),),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.live_tv,color: Colors.brown,),
                          Divider(),
                          Text('Streaming',style: TextStyle(fontSize: 15,color: Colors.black),)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.phonelink_setup,color: Colors.green,),
                Divider(),
                Text('Pasca',style: TextStyle(fontSize: 15,color: Colors.black),),
                Text('Bayar',style: TextStyle(fontSize: 15,color: Colors.black),),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.dashboard,color: Colors.black54,),
                          Divider(),
                          Text('Lainnya',style: TextStyle(fontSize: 15,color: Colors.black),)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget summaryCash() {
  return Positioned(
    top: 160,
    left: 20,
    child: Container(
      width: 370,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.add),
                Divider(),
                Text('Top Up',style: TextStyle(fontSize: 15, color: Colors.black),)
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.swap_horizontal_circle),
                Divider(),
                Text('Transfer',style: TextStyle(fontSize: 15, color: Colors.black),)
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.history),
                Divider(),
                Text('History',style: TextStyle(fontSize: 15, color: Colors.black),),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget backgroundHeader() {
  return Container(
    height: 250,
    decoration: BoxDecoration(
      color: Colors.pinkAccent,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: swihRadius.circular(25),
      ),
    ),
    child: new Container(
      padding: const EdgeInsets.only(bottom: 150,left: 160),
      child: Center(
        child: Row(
          children: <Widget>[
            Text('OVO',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 150,top: 30),
                  child: Icon(Icons.notifications,color: Colors.white,),
                )
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget ovoCash(){
  return Positioned(
    left: 20,
    top: 80,
    child: Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('OVO Cash',style: TextStyle(fontSize:15, color: Colors.white ),),
            Text('Rp.100.000',style: TextStyle(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold),),
            Text('OVO Points 2.696',style: TextStyle(fontSize:15, color: Colors.white ),),
          ],
        ),
      ],
    ),
  );
}
