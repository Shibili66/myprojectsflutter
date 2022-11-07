import 'package:flutter/material.dart';

class Expansion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Expansion"),
     ),
     body: ExpansionTile(
       title: Text("Color"),
       subtitle: Text("Expand "),
       children: [
         ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.red,
           ),
         ),
         ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.green,
           ),
         ),
         ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.black,
           ),
         ),
         ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.blueAccent,
           ),
         ),
         ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.yellow,
           ),
         ),
         ListTile(
           leading: CircleAvatar(
             backgroundColor: Colors.blueGrey,
           ),
         ),
       ],

     ),
   );
  }

}
void main(){
  runApp(MaterialApp(home:(Expansion())));
}