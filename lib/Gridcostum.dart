import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridcostum extends StatelessWidget{
List<String> images = [
  'asscts/images/money-bag.png',
  'asscts/images/money-bag.png',
  'asscts/images/money-bag.png',
  'asscts/images/money-bag.png',

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gridcostum'),
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index){
              return Image.asset(
              images[index],
              width: 50,
              height: 50,
              );
              },
    childCount: 8
    ),
    padding: EdgeInsets.all(20),
    shrinkWrap: true,
    );
  }

}
void main(){
  runApp(MaterialApp(home: Gridcostum(),));
}