import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ecommerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [
               Row(
                 children: [
                   Container(
                     height: 50,
                     width: 400,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.black.withOpacity(0.15)
                     ),
                    child: const TextField(
                        cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: "serach product",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(
                            Icons.search_rounded,color: Colors.black38,)
                      ),
                    ),
                   ),
                   Container(
                     height: 50,
                     width: 75,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.black26.withOpacity(.15),
                     ),
                     child: Icon(
                       Icons.shopping_cart,
                       color: Colors.black54,
                     ),
                   ),
                   Container(
                     height: 50,
                     width: 75,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.black26.withOpacity(.15),
                     ),
                     child: const Icon(
                       Icons.notifications_active,
                       color: Colors.black54,
                     ),
                   )
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 15,right: 490),
                 child: Container(
                   height: 100,
                   width: 500,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.deepPurple,
                   ),
                   child: Column(
                     children: const [
                       Padding(
                         padding: EdgeInsets.only(right: 300.0,top: 25),
                         child: Text("A Summer Surprise",style: TextStyle(color: Colors.white60),),
                       ),
                        Padding(
                          padding: EdgeInsets.only(right: 255.0,top: 10),
                          child: Text("Cashback 20%",style: TextStyle(
                              color: Colors.white70,fontSize: 25,fontWeight: FontWeight.bold),),
                        ),

                     ],
                   ),
                 ),
               ),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(
                       height: 70,
                       width: 90,
                       child: Card(
                         color: Colors.deepOrange[100],
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Icon(Icons.flash_on_outlined,color: Colors.black26,),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(
                       height: 70,
                       width: 90,
                       child: Card(
                         color: Colors.deepOrange[100],
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: Icon(Icons.receipt_long_sharp,color: Colors.black26,),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(
                       height: 70,
                       width: 90,
                       child: Card(
                         color: Colors.deepOrange[100],
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: const Icon(Icons.videogame_asset_rounded,color: Colors.black26,),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(
                       height: 70,
                       width: 90,
                       child: Card(
                         color: Colors.deepOrange[100],
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: const Icon(Icons.card_giftcard_outlined,color: Colors.black26,),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(
                       height: 70,
                       width: 90,
                       child: Card(
                         color: Colors.deepOrange[100],
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: const Icon(Icons.more_time_outlined,color: Colors.black26,),
                       ),
                     ),
                   )
                 ],
               ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Flash Deal",
                    style: TextStyle(fontSize: 15,color: Colors.black45),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text("Bill",
                      style: TextStyle(fontSize: 15,color: Colors.black45),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 80.0),
                    child: Text("Game",
                      style: TextStyle(fontSize: 15,color: Colors.black45),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 80.0,right: 20),
                    child: Text("Daily Gift",
                      style: TextStyle(fontSize: 15,color: Colors.black45),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35.0),
                    child: Text("More",
                      style: TextStyle(fontSize: 15,color: Colors.black45),),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Special for you",style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 320.0),
                    child: Text("See More",style: TextStyle(color: Colors.black38),),
                  )
                ],
              ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     Stack(
                       children: [
                         Stack(
                           children: [
                          Padding(
                            padding: const EdgeInsets.only(right:730.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red,
                              ),
                              height: 99,
                              width: 280,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset("asscts/images/phone2.jpg",
                              fit: BoxFit.fill,
                              ),
                            ),
                          ),
                         Column(
                           children: const [
                             Padding(
                               padding: EdgeInsets.only(top: 40.0,left: 30),
                               child: Text("Smart Phone",style: TextStyle(
                                   fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                             ),
                                Text("18 Brands",style: TextStyle(color: Colors.white),),
                           ],
                         ),
                             Padding(
                               padding: const EdgeInsets.only(left: 300.0),
                               child: Container(
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                                   color: Colors.red,
                                 ),
                                 height: 99,
                                 width: 220,
                                 clipBehavior: Clip.antiAliasWithSaveLayer,
                                 child: Image.asset("asscts/images/countries/bbrandd.jpeg",
                                   fit: BoxFit.fill,
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 300.0),
                               child: Column(
                                 children: const [
                                   Padding(
                                     padding: EdgeInsets.only(top: 40.0,left: 30),
                                     child: Text("Fashion",style: TextStyle(
                                       fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 20.0),
                                     child: Text("25 Brands",style: TextStyle(color: Colors.white),),
                                   ),
                                 ],
                               ),
                             ),
                       ],),
                       ],),


                   ],
                 ),

               ),
               Row(
                 children: const [
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Text("Popular Product",style: TextStyle(
                         fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 320.0),
                     child: Text("See More",style: TextStyle(color: Colors.black38),),
                   )
                 ],
               ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right:800.0),
                       child: Container(
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(13),
                             color: Colors.black12.withOpacity(0.15)),
                         height: 90,
                         width: 90,
                         child: Padding(
                           padding: const EdgeInsets.all(11.0),
                           child: Image.asset(
                             'asscts/images/countries/product.jpg',
                             fit: BoxFit.cover,
                           ),
                         ),

                     ),
                     )
                   ],
                 )
               )
             ],
           ),
         ),
       ),
     bottomSheet: ClipRRect(
       borderRadius: const BorderRadius.only(
         topLeft: Radius.circular(40.0),
         topRight: Radius.circular(40.0),
       ),
       child: SizedBox(
         width: 550,
         child: BottomNavigationBar(
           elevation: 1,
           type: BottomNavigationBarType.fixed,
           currentIndex: 0,
           backgroundColor: Colors.white60,
             selectedLabelStyle:
             const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
         selectedItemColor: Colors.deepOrangeAccent,
         unselectedItemColor: Colors.grey,
         items: const [
         BottomNavigationBarItem(
           icon: Icon(
             Icons.storefront_sharp,
             size: 25,
           ),
           label: '.',
         ),
           BottomNavigationBarItem(
               icon: Icon(
                 Icons.favorite_border_rounded,
                 size: 25,
               ),
               label: ''),
           BottomNavigationBarItem(
               icon: Icon(
                 Icons.messenger_outline,
                 size: 25,
               ),
               label: ''),
           BottomNavigationBarItem(
               icon: Icon(
                 Icons.account_circle_rounded,
                 size: 25,
               ),
               label: ''),
           ],

         ),
       ),
     ),
     );
  }

}
void main(){
  runApp(MaterialApp(home:Ecommerce(),));
}