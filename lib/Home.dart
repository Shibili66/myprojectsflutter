import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("LoginPage"),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: const Text("loginPage",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("UserNme"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  obscuringCharacter: '*',
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: ElevatedButton(onPressed: (){}, child: Text("LOGIN")),
              ),
              TextButton(onPressed: (){}, child: Text("Not a user? Register Here !!"))
            ],
          ),
        )
    );
  }

}
void main(){
  runApp(MaterialApp(home: HomePage(),));
}
