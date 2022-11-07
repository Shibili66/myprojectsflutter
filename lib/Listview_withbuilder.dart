import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listview_withbuider extends StatelessWidget {

  var datas = <String>['DATA1','DATA2','DATA3'];
  var colors = <int>[600,500,200];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("List2"),
    ),
    body: ListView.builder(
      itemCount: datas.length,
        itemBuilder: (BuildContext cntx,int index){

          return Container(
            height: 50,
            color: Colors.green[colors[index]],
            child: Center(child: Text(datas[index]),),

          )
        }),
  )
  }

}