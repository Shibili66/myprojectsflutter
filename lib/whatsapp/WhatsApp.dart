import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Calls.dart';
import 'Chats.dart';
import 'Group.dart';
import 'Status.dart';

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 4,
       child: Scaffold(
         appBar: AppBar(
           title: Text("WhatsApp"),
           actions: [
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Icon(Icons.camera_alt),
             ), const Padding(
               padding: EdgeInsets.all(8.0),
               child: Icon(Icons.search),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 25.0),
               child: PopupMenuButton(itemBuilder: (context){
                 return[
                   const PopupMenuItem(child: Text('New group')),
                   const PopupMenuItem(child: Text('New broadcast')),
                   const PopupMenuItem(child: Text('Linked devices')),
                   const PopupMenuItem(child: Text('Starred messages')),
                   const PopupMenuItem(child: Text('Payments')),
                   const PopupMenuItem(child: Text('Settings')),
                 ];
               }),
             )

           ],
           backgroundColor: Colors.teal[800],
           bottom:  const TabBar(
               tabs: [
                 Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Tab(
                     icon: Icon(Icons.groups),
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Tab(
                     text: 'CHATS',
                   ),
                 ),
                 Tab(
                   text: 'STATUS',
                 ),
                 Tab(
                   text: 'CALLS',
                 ),
               ]),
         ),
         body: TabBarView(
           children: [
             Group(),
             Chats(),
             Status(),
             Call(),
           ],
         ),
       ));
  }


}
void main(){
  runApp(MaterialApp(home:(WhatsApp())));
}