import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Freshzone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       shrinkWrap: true,
       slivers: [
             SliverAppBar(
             floating: true,
              pinned: true,
         backgroundColor: Colors.green[800],
       title: const Text("FARMERS FRESH ZONE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold
       ),
       ),
         actions: [
           Padding(
             padding: const EdgeInsets.only(top: 12,),
             child: Wrap(
             children: const [
               Icon(Icons.location_on_outlined),
               Padding(
                 padding: EdgeInsets.only(right: 8.0,top: 5),
                 child: Text("Kochi"),
               ),
               Icon(Icons.arrow_drop_down)
             ],
             ),
           ),
         ],
         bottom: PreferredSize(
           preferredSize: Size.fromHeight(40),
           child: Padding(
             padding: const EdgeInsets.only(bottom: 12.0),
             child: Column(
               children: [
                 Container(
                   height: 30,
                   width: 450,
                   color: Colors.white,
                   child: const Padding(
                     padding: EdgeInsets.only(left: 10,bottom: 5),
                     child: TextField(
                       decoration: InputDecoration(
                           hintText: "Search for Vegetables, Fruits",
                         enabledBorder: InputBorder.none,
                         focusedBorder: InputBorder.none,
                         prefixIcon: Icon(Icons.search_outlined),
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
       ),
         SliverList(
             delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 10,
                   children: [
                     Container(
                       width: MediaQuery.of(context).size.width / 4.5,
                       height: MediaQuery.of(context).size.height / 25,
                       decoration: BoxDecoration(
                           border: Border.all(color: const Color(0xFF81C784)),
                           color: Colors.green[50],
                           borderRadius: BorderRadius.circular(25)),
                       child: Center(
                           child: Text(
                             "VEGETABLES",
                             style: TextStyle(color: Colors.green[400]),
                           )),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width / 4.7,
                       height: MediaQuery.of(context).size.height / 25,
                       decoration: BoxDecoration(
                           border: Border.all(color: const Color(0xFF81C784)),
                           color: Colors.green[50],
                           borderRadius: BorderRadius.circular(25)),
                       child: Center(
                           child: Text(
                             "FRUITS",
                             style: TextStyle(color: Colors.green[400]),
                           )),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width / 4.7,
                       height: MediaQuery.of(context).size.height / 25,
                       decoration: BoxDecoration(
                           border: Border.all(color: const Color(0xFF81C784)),
                           color: Colors.green[50],
                           borderRadius: BorderRadius.circular(25)),
                       child: Center(
                           child: Text(
                             "EXOTIC",
                             style: TextStyle(color: Colors.green[400]),
                           )),
                     ),Container(
                       width: MediaQuery.of(context).size.width / 4.3,
                       height: MediaQuery.of(context).size.height / 25,
                       decoration: BoxDecoration(
                           border: Border.all(color: const Color(0xFF81C784)),
                           color: Colors.green[50],
                           borderRadius: BorderRadius.circular(25)),
                       child: Center(
                           child: Text(
                             "FRESH CUTS",
                             style: TextStyle(color: Colors.green[400]),
                           )),
                     ),
                   ],
               ),
                ),
               Column(
                 children: [
                   Container(
                     height: 140,
                     width: double.infinity,
                     color: Colors.orange[300],
                     child: const Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvO9GMFR88j3sTHP2M_ti1DTeSvG5jmtfE-Q&usqp=CAU",),
                     fit: BoxFit.cover,),
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(left:60,top: 2),
                 child: Wrap(
                   direction: Axis.horizontal,
                   spacing: 90,
                   children: [
                     Image.asset("asscts/images/icons.jpg",height: 50,width: 50,),
                     Image.asset("asscts/Icons/phonehand.jpg",height: 40,width: 50,),
                     Padding(
                       padding: const EdgeInsets.only(top: 4.0),
                       child: Image.asset("asscts/Icons/farmer two.jpg",height: 40,width: 40,),
                     )
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:40,),
                 child: Wrap(
                   direction: Axis.horizontal,
                   spacing:70,
                   children: const [
                     Text("30 MINS POLICY",style: TextStyle(fontSize: 11),),
                     Text("TRACEABILTY",style: TextStyle(fontSize: 11)),
                     Text("LOCAL SOURCING",style: TextStyle(fontSize: 11)),
                   ],
                 ),
               ),
               Row(
                 children: const [
                   Padding(
                     padding: EdgeInsets.only(left:12,top: 11),
                     child: Text("Shop By Category",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 10,left: 15),
                 child: Wrap(
                   spacing: 10,
                   children: [
                     Container(
                       height: 140,
                       width: 150,
                       decoration: BoxDecoration(
                         borderRadius: const BorderRadius.only(
                           topLeft: Radius.circular(10.0),
                           topRight: Radius.circular(10.0),),
                         color: Colors.grey[350],
                       ),
                       child: Stack(
                         children: [
                           Container(
                             height: 95,
                             width: 150,
                             decoration: const BoxDecoration(
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(10.0),
                                 topRight: Radius.circular(10.0),),
                        image: DecorationImage(
                          image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtvjL5_2RnvKh-5W_YIIw61qxVyTTyDpPzbQ&usqp=CAU",),
                             fit: BoxFit.cover),
                             ),),
                           const Padding(
                             padding: EdgeInsets.only(top: 105,left: 30),
                             child: Text("Vegetables"),
                           )
                         ],
                       ),
                     ),
                   Container(
                     height: 140,
                     width: 150,
                     decoration: BoxDecoration(
                       borderRadius: const BorderRadius.only(
                         topLeft: Radius.circular(10.0),
                         topRight: Radius.circular(10.0),),
                       color: Colors.grey[350],
                     ),
                   child: Stack(
                    children: [
                     Container(
                      height: 95,
                      width: 150,
                      decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                     topRight: Radius.circular(10.0),),
                        image: DecorationImage(
                            image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa2E4T-K3JNe2z4_zQb14ibXEjb2XDzL8J45WBimK4iEqwyd6ukCzeChqBc3EdoH-JaLk&usqp=CAU",),
                            fit: BoxFit.cover),
                    ),
                   ),
                      const Padding(
                        padding: EdgeInsets.only(top: 105,left: 30),
                        child: Text("Fruits"),
                      )
              ],
                   ),),
              Container(
                height: 140,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),),
                  color: Colors.grey[350],
                ),
                 child: Stack(
                  children: [
                   Container(
                     height: 95,
                     width: 150,
                   decoration: const BoxDecoration(
                   borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(10.0),
                   topRight: Radius.circular(10.0),),
                     image: DecorationImage(
                         image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlOsneHL3GjPQf73kdEAS51TOW32Kzcg_wbZu1oAn05_Tx6K8x0W8BePIKoo7baWaoZa0&usqp=CAU",),
                         fit: BoxFit.cover),
                 ),
              ),
                    const Padding(
                      padding: EdgeInsets.only(top: 105,left: 30),
                      child: Text("Exotic"),
                    )
                  ],
               )
             )

           ],
         ),
         ),
               Padding(
                 padding: const EdgeInsets.only(top: 10,left: 15),
                 child: Wrap(
                   spacing: 10,
                   children: [
                     Container(
                       height: 140,
                       width: 150,
                       decoration: BoxDecoration(
                         borderRadius: const BorderRadius.only(
                           topLeft: Radius.circular(10.0),
                           topRight: Radius.circular(10.0),),
                         color: Colors.grey[350],
                       ),
                       child: Stack(
                         children: [
                           Container(
                             height: 95,
                             width: 150,
                             decoration: const BoxDecoration(
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(10.0),
                                 topRight: Radius.circular(10.0),),
                               image: DecorationImage(
                                   image:NetworkImage("https://media.istockphoto.com/id/181096394/photo/diced-fruits.jpg?s=170667a&w=0&k=20&c=XpWZLBs98A5Wte_mL8My0YcPnzFMhrpSQPLEVvf0oDA=",),
                                   fit: BoxFit.cover),
                             ),),
                           const Padding(
                             padding: EdgeInsets.only(top: 105,left: 30),
                             child: Text("Vegetables"),
                           )
                         ],
                       ),
                     ),
                     Container(
                       height: 140,
                       width: 150,
                       decoration: BoxDecoration(
                         borderRadius: const BorderRadius.only(
                           topLeft: Radius.circular(10.0),
                           topRight: Radius.circular(10.0),),
                         color: Colors.grey[350],
                       ),
                       child: Stack(
                         children: [
                           Container(
                             height: 95,
                             width: 150,
                             decoration: const BoxDecoration(
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(10.0),
                                 topRight: Radius.circular(10.0),),
                               image: DecorationImage(
                                   image:NetworkImage("https://thumbs.dreamstime.com/b/sprouts-small-leaves-stems-arugula-white-background-close-up-microgreens-sprouting-seed-germination-home-vegan-181049687.jpg",),
                                   fit: BoxFit.cover),
                             ),
                           ),
                           const Padding(
                             padding: EdgeInsets.only(top: 105,left: 30),
                             child: Text("Fruits"),
                           )
                         ],
                       ),),
                     Container(
                         height: 140,
                         width: 150,
                         decoration: BoxDecoration(
                           borderRadius: const BorderRadius.only(
                             topLeft: Radius.circular(10.0),
                             topRight: Radius.circular(10.0),),
                           color: Colors.grey[350],
                         ),
                         child: Stack(
                           children: [
                             Container(
                               height: 95,
                               width: 150,
                               decoration: const BoxDecoration(
                                 borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(10.0),
                                   topRight: Radius.circular(10.0),),
                                 image: DecorationImage(
                                     image:NetworkImage("https://previews.123rf.com/images/espies/espies1801/espies180100306/92720818-raw-indian-spice-powder-over-red-yellow-or-green-background-selective-focus.jpg",),
                                     fit: BoxFit.cover),
                               ),
                             ),
                             const Padding(
                               padding: EdgeInsets.only(top: 105,left: 30),
                               child: Text("Exotic"),
                             )
                           ],
                         )
                     ),
                     Wrap(
                       direction: Axis.vertical,
                       children: const [
                         Text("DATA1"),
                         Text("Data1"),
                         Text("DATA2"),
                         Text("DATA3")
                       ],
                     )
                   ],
                 ),
               ),],
         ),),],
     ),
     bottomSheet:ClipRRect(
       borderRadius: const BorderRadius.only(
         topLeft: Radius.circular(40.0),
         topRight: Radius.circular(40.0),
       ),
       child: SizedBox(
         width: 500,
         child:BottomNavigationBar(
           type: BottomNavigationBarType.fixed,
           selectedItemColor: Colors.black38,
           backgroundColor: Colors.white70,
           items:  const [
             BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'HOME',backgroundColor: Colors.blueAccent),
             BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'CART'),
             BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'ACCOUNT'),
           ],
         ),
       ),
     ),
     );
  }

}
void main(){
  runApp(MaterialApp
    (debugShowCheckedModeBanner: false,
      home:(Freshzone())));
}