import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  List time = ["12:30","12:35","12:55","1:05","1:20","1:30","2:00","2:16"];
  List sub = ["9464425627: Hallo",
              "9753574834:hay",
              "9665367994:are you working",
               "9537353478:shgfd",
               "appu:Hallo are you working",
                "Mhammed: are you working",
                "aju:Hay",
                 "vejayan: heydusih"];
  List til =["group1",
    "group2",
    "group3",
    "group4",
    "group5",
    "Barca Fans Kerala",
    "Kbfc",
    "gruop8"];
  List img =[
    "asscts/images/images (2).jpg",
    "asscts/images/kbfc.jpg",
    "asscts/images/images (2).jpg",
    "asscts/images/images (2).jpg",
    "asscts/images/kbfc.jpg",
    "asscts/images/barca.jpg",
    "asscts/images/kbfc.jpg",
    "asscts/images/images (2).jpg",
];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(
       itemCount: til.length,
       itemBuilder: (BuildContext context, int index) {
         return ListTile(
           title: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(til[index],style: TextStyle(fontSize: 20),),
           ),
           leading:CircleAvatar(
             backgroundImage: AssetImage(img[index],),
         ),
             subtitle: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(sub[index]),
             ),
         trailing: Text(time[index]),
         );
       }),
   );
  }

}
void main(){
  runApp(MaterialApp(home:(Chats())));
}