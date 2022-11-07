import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Newhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Center(child: Text("List view")),
     ),
     body: ListView(
       children: const [
         SizedBox(height: 30,),
         Center(
           child: Text("List of fruits",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
         ),
         ),
         Padding(
           padding: EdgeInsets.all(8.0),
           child: ListTile(
             title:  Text("Apple"),
             subtitle: Text("Green Apple"),
             trailing: Icon(Icons.monetization_on),
             leading: CircleAvatar(
               backgroundImage: NetworkImage(
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTRDmfmp1vzUXH_kDTxO2Wso66O3zxPUNbjg&usqp=CAU"
               ),
             ),
           ),
         ),
         Padding(
           padding: EdgeInsets.all(8.0),
           child: ListTile(
             title:   Text("Apple"),
             subtitle: Text("Green Apple"),
             trailing:  Icon(Icons.monetization_on),
             leading: CircleAvatar(
               backgroundImage: NetworkImage(
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTRDmfmp1vzUXH_kDTxO2Wso66O3zxPUNbjg&usqp=CAU"
               ),
             ),
           ),
         ),
         ListTile(
           title:  Text("Apple"),
           subtitle: Text("Green Apple"),
           trailing: Icon(Icons.monetization_on),
           leading: CircleAvatar(
             backgroundImage: NetworkImage(
                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTRDmfmp1vzUXH_kDTxO2Wso66O3zxPUNbjg&usqp=CAU"
             ),
           ),
         ),
       ],
     ),
   );
  }

}
void main(){
  runApp(MaterialApp(home: Newhome(),));
}