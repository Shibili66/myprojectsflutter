import 'package:application1/stack.dart';
import 'package:flutter/material.dart';

import 'Gridview.dart';

class tab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
      appBar: AppBar(
        title: const Text("MyTab"),
        actions: [
          const Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return[
              const PopupMenuItem(child: Text('Settings')),
              const PopupMenuItem(child: Text('version')),
              const PopupMenuItem(child: Text('Help')),
              const PopupMenuItem(child: Text('About')),
            ];
          })

        ],
      backgroundColor: const Color(0xffffdc56) ,
      bottom: const TabBar(
        tabs: [
          Tab(
            iconMargin: EdgeInsets.all(100),
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            icon: Icon(Icons.home_filled),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.account_circle_rounded),
            text: "account",
          ),
          Tab(
            icon: Icon(Icons.favorite),
            text: "favorite",
          ),
        ],
      )

    ),
    body: TabBarView(
      children: [
        stack(),
        Gridview(),
        Gridview(),
        stack(),
      ],
    )
    ),
    );
  }
}
void main(){
  runApp(MaterialApp(home:(tab())));
}