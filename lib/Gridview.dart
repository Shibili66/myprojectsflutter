import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Gridview"),
     ),
     body: GridView.extent(
       maxCrossAxisExtent: 70,
       crossAxisSpacing: 10,
       mainAxisSpacing: 10,
       padding: EdgeInsets.all(10),
       shrinkWrap: true,
       children: [
         Container(
           color: Colors.green,
         ),
         Container(
           color: Colors.red,
         ),
         Container(
           color: Colors.yellow,
         ),
       ],
     ),
   );
  }

}
void main(){
  runApp(MaterialApp(home:Gridview()));
}