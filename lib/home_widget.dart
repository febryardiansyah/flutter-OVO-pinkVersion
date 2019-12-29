import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
    return _HomeState();
  }
}
class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children=[];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.pinkAccent),
            title: Text('Home',style: TextStyle(color: Colors.pinkAccent)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer,color: Colors.pinkAccent),
            title: Text('Promo',style: TextStyle(color: Colors.pinkAccent)),
          ),
        ],
      ),
    );
  }
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}
