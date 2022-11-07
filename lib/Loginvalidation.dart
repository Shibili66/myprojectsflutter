import 'package:application1/Newhome.dart';
import 'package:application1/project.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Loginvalidation extends StatelessWidget{
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("LOGIN PAGE"),),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            Center(child: Text("Login page",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13.0,left:20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('user name'),
                    border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
                validator: (text){
                  if(text!.isEmpty || !(text.contains("@")) || text == null){
                    return "Invalid Email";
                    }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13.0,right: 20,left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                 label: Text('password'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                ),
                validator: (password){
                  if(password!.isEmpty || password.length < 6 || password.isEmpty){
                    return "password length should be gerater than 6";
                    }else{
                      return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:40.0,left: 40,top: 50),
              child: ElevatedButton(onPressed: (){
                final isValid = formkey.currentState!.validate();
                if(isValid){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Newhome()));
                }else{
                  Fluttertoast.showToast(
                      msg: "login failure",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }
              }, child: Text("LOGIN")),
            )
          ],
        ),
      ),
    );

  }
  
}
void main(){
  runApp(MaterialApp(home: Loginvalidation() ,));
}

 