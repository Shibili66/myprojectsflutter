import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  List<String> images =[
    "asscts/images/jasper-national-park-gc6c1e4a27_1920.jpg",
    "asscts/images/jasper-national-park-gc6c1e4a27_1920.jpg",
    "asscts/images/jasper-national-park-gc6c1e4a27_1920.jpg",
    "asscts/images/jasper-national-park-gc6c1e4a27_1920.jpg",
  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('My grid'),
    ),
    body: GridView.builder(
      itemCount: images.length,
      itemBuilder: (BuildContext context,int index){
        return Image.asset(images[index],fit: BoxFit.cover,);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
      ),
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
    )
    );
  }
  
}
void main(){
  runApp(MaterialApp(home: Grid(),));
}