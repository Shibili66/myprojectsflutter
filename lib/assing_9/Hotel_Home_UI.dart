import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: AppBar(
           leading: Icon(Icons.menu),
         actions: const [
           Padding(
             padding: EdgeInsets.only(right: 35.0),
             child: Icon(Icons.favorite),
           ),
         ],
         bottom: PreferredSize(
           preferredSize: Size.fromHeight(115),
           child: Column(
             children: [
               const Padding(
                 padding: EdgeInsets.only(bottom: 8.0),
                 child: Text("Type your Location",
                   style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                       color: Colors.white60),),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                      height: 50,
                      width: 400,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(25),
                     color: Colors.white,
                   ),
                   child: const Padding(
                     padding: EdgeInsets.only(right: 20.0),
                     child: TextField(
                       decoration: InputDecoration(
                         hintText: "Bouddha,Kathmandu",hintStyle: TextStyle(fontWeight: FontWeight.bold),
                         enabledBorder: InputBorder.none,
                         focusedBorder: InputBorder.none,
                         prefixIcon: Padding(
                           padding: EdgeInsets.only(left: 20.0),
                           child: Padding(
                             padding: EdgeInsets.only(right: 30.0),
                             child: Icon(Icons.search_outlined),
                           ),
                         )
                       ),

                     ),
                   ),
                 ),
               )
             ],
           ),
         ),
       ),
     body: Column(
       children: [
         Row(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 20.0,left: 60),
               child: Container(
                 height: 70,
                 width: 110,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   color: Colors.pink,

                 ),
                 child: Column(
                   children: [
                     const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Icon(Icons.hotel,color: Colors.white,size: 30,),
                     ),
                     Column(
                       children: [
                         Text("Hotel",style: TextStyle(color: Colors.white),)
                       ],
                     )
                   ],
                 ),

               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20.0,left: 25),
               child: Container(
                 height: 70,
                 width: 110,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   color: Colors.blue,

                 ),
                 child: Column(
                   children: [
                     const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Icon(Icons.restaurant,color: Colors.white,size: 30,),
                     ),
                     Column(
                       children: const [
                         Text("Restaurant",style: TextStyle(color: Colors.white),)
                       ],
                     )
                   ],
                 ),

               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20.0,left: 20),
               child: Container(
                 height: 70,
                 width: 110,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   color: Colors.yellow[600],

                 ),
                 child: Column(
                   children: [
                     const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Icon(Icons.local_cafe_sharp,color: Colors.white,size: 30,),
                     ),
                     Column(
                       children: const [
                         Text("Cafe",style: TextStyle(color: Colors.white),)
                       ],
                     )
                   ],
                 ),

               ),
             )
           ],
         ),
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 12.0),
               child: Container(
                 height: 330,
                 width: 430,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(7),
                     color: Colors.grey[300]
                 ),
                 child: Column(
                   children: [
                     Container(
                       height: 220,
                       width: 430,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(7),
                         color: Colors.pinkAccent,

                       ),
                       clipBehavior: Clip.antiAliasWithSaveLayer,
                       child: const Image(
                         image:  NetworkImage("asscts/images/countries/room.jpg",),
                         fit: BoxFit.fill,
                       ),
                     ),
                     const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: ListTile(
                         title: Text("Awesome room near Bouddha",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                         subtitle: Padding(
                           padding: EdgeInsets.only(top: 8.0),
                           child: Text("Bouddha,Kathmandu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 23.0),
                       child: Row(
                         children: [
                           Icon(Icons.star,color: Colors.green[800],),
                           Icon(Icons.star,color: Colors.green[800],),
                           Icon(Icons.star,color: Colors.green[800],),
                           Icon(Icons.star,color: Colors.green[800],),
                           Icon(Icons.star,color: Colors.green[800],),
                           const Padding(
                             padding: EdgeInsets.only(left: 8.0),
                             child: Text("(220 reviews)",style: TextStyle(fontSize: 13),),
                           )
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             ),

           ],
         ),
       ],
     ),
   );
  }

}
void main(){
  runApp(MaterialApp(home:(Hotel())));
}