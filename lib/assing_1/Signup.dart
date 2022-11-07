import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Loginvalidation.dart';
import '../Newhome.dart';

class Signup extends StatefulWidget {

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
       title: Text("SignUp"),),

    body: SingleChildScrollView(
      child: Column(
        children:   [
           Padding(
            padding: EdgeInsets.only(top:25,bottom: 25),
            child: Text("SignUp_Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:  TextField(
              decoration: InputDecoration(
                label: Text("Username"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              obscuringCharacter: '*',
              obscureText: true,
              decoration: InputDecoration(
                label: Text("password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                )
              ),

            ),
          ),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              obscuringCharacter: '*',
              obscureText: true,
              decoration: InputDecoration(
                  label: Text("Confrom_password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:40.0,left: 40,top: 50),
            child: ElevatedButton(onPressed: (){
              final isValid = formkey.currentState!.validate();
              if(isValid){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Loginvalidation()));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Registration Successful'),
                  duration: const Duration(seconds: 1),
                  action: SnackBarAction(
                    label: 'undo',
                    onPressed: () { },
                  ),
                ));
              }
            }, child: const Text("Sign Up")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginvalidation()));}, child: const Text('Already have an account?Login')),
          )
        ],
      ),
    ),
  );
  }
}


void main(){
  runApp(MaterialApp(home: Signup(),));
}