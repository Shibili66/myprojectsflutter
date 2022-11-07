import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stack extends StatelessWidget {
  List Img = ["asscts/images/bridge-gd4c3f1ef5_1920.jpg",
             'asscts/images/palace-g53cd61652_1920.jpg',
             "asscts/images/pexels-justine-lauzon-4059793.jpg",
             "asscts/images/moscow-3617070__340.jpg",
              "asscts/images/pexels-confinedriley-11259542.jpg",
  ];
  List  name =  ["USA", "ENGLAND", "FRANCE", "RUSSIA", "CANADA", ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     appBar: AppBar(
       backgroundColor: Colors.deepPurple,
       title: Text("Countries"),
     ),
     body: GridView.builder(itemCount: Img.length,
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 3,
         mainAxisSpacing: 3,
         crossAxisSpacing: 3,),
    itemBuilder: (context,index){
       return Stack(
         children: [
           SizedBox(
             height: 350,
             width: 360,
             child: Card(
               clipBehavior: Clip.antiAliasWithSaveLayer,
               child: Image.asset(
                 Img[index],
               fit: BoxFit.fill,),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30)
               ),
             ),
           ),
           Positioned(
             bottom: 12,
             left: 30,
             child: Text(
               name[index],
               style: const TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.w900,
                 fontSize: 25
               ),
             ),
           )
         ],
       );

         }
     )
         );
  }
}
void main(){
  runApp(MaterialApp(home:stack()));
}