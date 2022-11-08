import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text("Profil UI",),
    ),
    body: Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(width: double.infinity,height: 225,
              child: Image.asset("asscts/images/countries/be.jpg",fit: BoxFit.cover,),
            ),
           Expanded(child: Container(
             color: Colors.white,
             child: const Padding(
               padding: EdgeInsets.only(left: 450,top:40),
               child: ListTile(
                 title: Text('David Beckham',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 subtitle: Text("Footballer & Model",style: TextStyle(fontSize: 15),),
               ),
             ),
           ),)
          ],
        ),
        const Positioned(
          top: 150,//(background container size) - (circle height / 2)
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              child: CircleAvatar(
                backgroundImage: AssetImage("asscts/images/countries/beckhamprofile.jpg"),
                radius: 56,
              ),
            )),
        Positioned(
          top: 200,left: 50,
            child: Container(
              width: 50 ,height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(65),color: Colors.red,),
              child: const Icon(Icons.message,color: Colors.white,),
            )),
        Positioned(
            top: 200,right: 50,
            child: Container(
              width: 50 ,height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(65),color: Colors.blue,),
              child: Icon(Icons.add,color: Colors.white,),
            )),

      ],
    ),
  );
  }

}
void main(){
  runApp(MaterialApp(home: StackDemo()));
}