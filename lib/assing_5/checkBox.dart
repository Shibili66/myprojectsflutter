import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class checkBox extends StatefulWidget {
  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  List img = [
    "asscts/images/countries/android.jpg",
    "asscts/images/countries/flutter.png",
    "asscts/images/countries/apple.png",
    "asscts/images/countries/php.png",
    "asscts/images/countries/node.jpg",
  ];
  List til = ["Android","Flutter","Ios","Php","Node",
  ];
  List isck = [
    isCheck = false,
    isCheck = false,
    isCheck = false,
    isCheck = false,
    isCheck = false,
  ];

  static set isCheck(bool isCheck) {}
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       centerTitle: true,
       title: const Text("List with CheckBox", style: TextStyle(
           color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
     ),
     body: ListView.separated(
         itemCount: 5,
         itemBuilder: (context, int index){
           return SizedBox(
             height: 75,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListTile(
                 trailing: Checkbox(
                   activeColor: Colors.pink,
                   checkColor: CupertinoColors.white,
                   value: isck[index],
                   onChanged: (bool? value) {
                   setState(() {
                     isck[index]=value!;
                   });
                   },
                 ),
                 title: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(til[index]),
                 ),
                 leading: CircleAvatar(
                   maxRadius: 25,
                   backgroundImage: AssetImage(img[index]),
                 ),
               ),
             ),
           );
         },
         separatorBuilder: (BuildContext contex, int index){
           return const Divider(
             thickness: 3,
           );
         },
         ) ,
   );
  }
}
void main(){
  runApp(MaterialApp(home:(checkBox())));
}