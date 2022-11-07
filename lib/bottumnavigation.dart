import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottumnavigation extends StatefulWidget {
  @override
  State<bottumnavigation> createState() => _bottumnavigationState();
}

class _bottumnavigationState extends State<bottumnavigation> {

  int Selectindex = 0;
  List bodys = [const Card(color: Colors.blueAccent, child: Center(child: Text('Home'),),),
                Card(color: Colors.green, child: Center(child: Text('serach'),),),
                Card(color: Colors.redAccent, child: Center(child: Text('image'),),),
                Card(color: Colors.grey, child: Center(child: Text('profile'),),),
  ];

  onitemtapped(int index){
    setState(() {
      Selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomBar"),
        centerTitle: true,
      ),
      body:  Center(
        child: SizedBox(
          height: 100,
          width: 120,
          child: bodys.elementAt(Selectindex)
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black38,
        unselectedItemColor: Colors.yellow,
        backgroundColor: Colors.green,
        items:  const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home',backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.image),label: 'Image'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: 'profile'),
        ],
        currentIndex: Selectindex,
        onTap: onitemtapped,
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home: bottumnavigation(),));
}