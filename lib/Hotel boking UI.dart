import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class hotel extends StatelessWidget {
  List<Map> Popular = [
    {
      'id' : 0,
      'image' : 'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg',
      'name' : 'Crowne Plaza',
      'desc' : 'A three star hotel in Kakkanad',
      'price' : 49,
      'rating' : 4.3,

    },
    {
      'id' : 1,
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdwI3kJyO-XPSsoAHNx8fOgP36rIRtQ5iRVA&usqp=CAU',
      'name' : 'Presidency',
      'desc' : 'A four star hotel in Edappalli',
      'price' : 79,
      'rating' : 4.5,

    },
    {
      'id' : 2,
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2WMn8v8dEo_hl0v2e24QFgGGVYyxYqyJbEw&usqp=CAU',
      'name' : 'Grand Hyatt',
      'desc' : 'A five star hotel in Bolgatty',
      'price' : 149,
      'rating' : 4.8,

    },
    {
      'id' : 3,
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkbkQvBW7lM7p0QCQAjGo6vypkhZKBFKhd9w&usqp=CAU',
      'name' : 'Marriott',
      'desc' : 'A four star hotel in Kochi',
      'price' : 89,
      'rating' : 4.2,

    },
    {
      'id' : 4,
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkbkQvBW7lM7p0QCQAjGo6vypkhZKBFKhd9w&usqp=CAU',
      'name' : 'Taj Malabar',
      'desc' : 'A four star hotel in Cochin',
      'price' : 69,
      'rating' : 3.8,

    },
];
     List<Map> packege = [
  {
    'id' : 0,
    'image' : 'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg',
    'name' : 'Crowne Plaza',
    'desc' : 'A three star hotel in Kakkanad',
    'price' : 49,
    'rating' : 4.3,

  },
  {
    'id' : 1,
    'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdwI3kJyO-XPSsoAHNx8fOgP36rIRtQ5iRVA&usqp=CAU',
    'name' : 'Presidency',
    'desc' : 'A four star hotel in Edappalli',
    'price' : 79,
    'rating' : 4.5,

  },
  {
    'id' : 2,
    'image' : 'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg',
    'name' : 'Grand Hyatt',
    'desc' : 'A five star hotel in Bolgatty',
    'price' : 149,
    'rating' : 4.8,

  },
  {
    'id' : 3,
    'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2WMn8v8dEo_hl0v2e24QFgGGVYyxYqyJbEw&usqp=CAU',
    'name' : 'Marriott',
    'desc' : 'A four star hotel in Kochi',
    'price' : 89,
    'rating' : 4.2,

  },
  {
    'id' : 4,
    'image' : 'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg',
    'name' : 'Taj Malabar',
    'desc' : 'A four star hotel in Cochin',
    'price' : 69,
    'rating' : 3.8,

  }

  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           backgroundColor: Colors.white70,
           title: Padding(
             padding: const EdgeInsets.only(top: 8),
             child: Wrap(
               direction: Axis.vertical,
               spacing: 3,
               children: const [
                 Text("Hello @fayis",style: TextStyle(color: Colors.black38,fontSize: 16),),
                 Text("Find Your Favouriate Hotel",style: TextStyle(color: Colors.black,fontSize: 18,
                 fontWeight: FontWeight.bold),)
               ],
             ),
           ),
           actions: [
             Padding(
               padding: const EdgeInsets.only(top: 8.0,right: 20),
               child: SizedBox(
                 width: 80,
                   height: 80,
                   child:
                   Image.network("https://images.squarespace-cdn.com/content/v1/5b0eb59df793928fa7f488ff/1536780543743-TZT0SJMRKV5LUOOY8FS0/Industryyyy.jpg",),
               ),
             )
           ],
         ),
         SliverList(
             delegate: SliverChildListDelegate([
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 50,
                   width: 400,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       boxShadow: [
                         BoxShadow(
                             offset: const Offset(5, 8),
                             color: Colors.grey[200]!,
                             blurRadius: 3)
                       ],
                       color: Colors.black.withOpacity(0.14)
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
               ),
               const Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Text("Popular Hotel",style: TextStyle(fontWeight: FontWeight.bold,
                 fontSize: 18),),
               ),
               Container(
                   height: MediaQuery.of(context).size.height*0.30,
               child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                   itemCount: Popular.length,
                 separatorBuilder: (BuildContext context, int index) {
                   return const SizedBox(width: 10,);
                 },
                   itemBuilder:(context, int index) {
                     var data = Popular[index];
                     return Padding(
                       padding: const EdgeInsets.only(left: 8.0),
                       child: Container(
                         width: MediaQuery.of(context).size.width * 0.35,
                         decoration: BoxDecoration(
                             color: Colors.grey[200],
                             boxShadow: const [
                               BoxShadow(
                                   color: Colors.grey,
                                   offset: Offset(2, 3),
                                   blurRadius: 2,
                                   spreadRadius: 1
                               )
                             ],
                             borderRadius: BorderRadius.circular(12)),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                               height: MediaQuery.of(context).size.height * 0.15,
                               width: MediaQuery.of(context).size.width * 0.35,
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                     image: NetworkImage(data['image']),
                                     fit: BoxFit.cover),
                                 borderRadius: const BorderRadius.only(
                                     topRight: Radius.circular(12),
                                     topLeft: Radius.circular(12)),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 8.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   const SizedBox(height: 5,),
                                   Text(data['name'],),
                                   const SizedBox(height: 5,),
                                   Text(data['desc'],),
                                   const SizedBox(height: 5,),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 8.0),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text('\$${data['price']} / night',style: const TextStyle(color: Colors.blue),),
                                         Text.rich(TextSpan(
                                             children: [
                                               TextSpan(
                                                   text: '${data['rating']}'),
                                               const WidgetSpan(child: Icon(
                                                 Icons.star, color: Colors.purple,
                                                 size: 18,))
                                             ]
                                         ))
                                       ],
                                     ),)
                                 ],),
                             )],
                         ),),
                     );
                 }
               ),),
               Row(
                 children: const [
                   Padding(
                     padding: EdgeInsets.only(top: 10.0,left: 10),
                     child: Text("Hotel Packages",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                   ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0,left: 270),
                      child: Text("view all",style:TextStyle(color: Colors.blue),),
                    )
                 ],
               ),
               Container(
                 height: MediaQuery.of(context).size.height*0.50,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 8.0),
                     child: ListView.separated(
                         scrollDirection: Axis.vertical,
                         itemCount: packege.length,
                         separatorBuilder: (BuildContext context, int index) {
                           return const SizedBox(height: 10,);
                         },
                         itemBuilder:(context, int index) {
                           var data = packege[index];
                           return Padding(
                             padding: const EdgeInsets.only(left: 8.0),
                             child: Container(
                               width: MediaQuery.of(context).size.width * 0.40,
                               decoration: BoxDecoration(
                                   color: Colors.grey[200],
                                   boxShadow: const [
                                     BoxShadow(
                                         color: Colors.grey,
                                         offset: Offset(2, 3),
                                         blurRadius: 2,
                                         spreadRadius: 1
                                     ),
                                   ],
                                   borderRadius: BorderRadius.circular(12)),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: MediaQuery.of(context).size.height * 0.20,
                                     width: MediaQuery.of(context).size.width * 0.35,
                                     decoration: BoxDecoration(
                                       image: DecorationImage(
                                           image: NetworkImage(data['image']),
                                           fit: BoxFit.cover),
                                       borderRadius: const BorderRadius.only(
                                           topLeft: Radius.circular(12),
                                           bottomLeft: Radius.circular(12)),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(20.0),
                                     child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           SizedBox(height: 5,),
                                           Text(data['name'],),
                                           SizedBox(height: 5,),
                                           Text(data['desc'],),
                                           SizedBox(height: 5,),
                                           Padding(
                                             padding: const EdgeInsets.only(right: 8.0),
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Text('\$${data['price']} / night',style: TextStyle(color: Colors.blue),),
                                                 Text.rich(TextSpan(
                                                     children: [
                                                       TextSpan(
                                                           text: '${data['rating']}'),
                                                       const WidgetSpan(child: Icon(
                                                         Icons.star, color: Colors.purple,
                                                         size: 18,))
                                                     ]
                                                 )),
                                                 Padding(
                                                   padding: const EdgeInsets.only(left: 85.0),
                                                   child: Row(
                                                     children: [
                                                       Container(
                                                         height: 30,
                                                         width: 60,
                                                         color: Colors.blue[900],
                                                         child: Center(child: Text("Book",style:TextStyle(color: Colors.white),)),
                                                         ),],),)
                                               ],),),
                                         ],),),],),),
                           );
                         }
                     ),),),),
             ]
         ),
         )
       ],
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
      BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home',backgroundColor: Colors.blueAccent),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: 'profile'),
    ],
  ),
    ),
  ),
   );

  }


}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:hotel(),));
}