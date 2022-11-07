import 'package:flutter/material.dart';

class checkBox extends StatefulWidget {
  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Check Box"),
    ),
    body: Checkbox(
      checkColor: Colors.white,
      value: ischecked,
      onChanged: (bool? value){
        setState(() {
          ischecked = value!;
        });
      }
    ),
  );

  }
}
void main(){
  runApp(MaterialApp(home:(checkBox())));
}