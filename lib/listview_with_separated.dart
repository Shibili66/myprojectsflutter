import 'package:flutter/material.dart';

class list_with_separated extends StatelessWidget {

  var datas = <String>['DATA1', 'DATA2', 'DATA3'];
  var colors = <int>[600, 400, 200];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
          return  Card(
            color: Colors.green[colors[index]],

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(datas[index]),
            ),
          );
        },
            separatorBuilder: (context, index){
            return const Divider(
            thickness: 5,
            color: Colors.blueGrey,
            );
            },
          itemCount: datas.length,
        ));
  }

}
void main(){
  runApp(MaterialApp(home: list_with_separated(),));
}