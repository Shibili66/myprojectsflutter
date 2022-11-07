import 'package:flutter/material.dart';

class staggered extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      Text('Staggered')
    ),
    body: StaggeredGrid

    );

  }

}

class BackGroundTile extends StatelessWidget {

  final Color? backgroundColor;
  final IconData iconData;

  BackGroundTile({this.backgroundColor, required this.iconData})
  @override
  Widget build(BuildContext context) {
   return Card(
     color: backgroundColor,
     child: Icon(iconData, color: Colors.yellow,),
   );

  }

}