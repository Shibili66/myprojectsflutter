import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class animator extends StatefulWidget {
  @override
  State<animator> createState() => _animatorState();
}
class _animatorState extends State<animator> {
  late bool formVisible;
  int? _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }
  Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Stack(
          children:[
            Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            color: Colors.blue,
            child: Image.network("https://media.istockphoto.com/id/1312418673/photo/security-cyber-login-computer-digital-internet-password-privacy-solution-technology-attack.jpg?b=1&s=612x612&w=0&k=20&c=Calqlj5Sc23Ed0FOtMv726Kb6IKyXYNqbuIRgbgqf6o=",
            fit: BoxFit.cover,
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35,left: 180),
                  child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.brown[700]),)
              ),
            Wrap(children:[
                  Padding(
                    padding: const EdgeInsets.only(top:90,left: 120),
                    child: Text("Welcome to this awesome login app.\nYou are awesome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.brown[900]),
                      textAlign: TextAlign.center,),
                  ),
                ],

    ),
            Padding(
              padding: const EdgeInsets.only(top:500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                     width: 170,
                     height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(40)
                        )
                      ),
                        onPressed: () {
                          setState(() {
                            formVisible = true;
                            _formsIndex = 1;
                          });
                            },
                        child: const Text("Login")),
                  ),
                  SizedBox(
                    width: 170,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                            )
                        ),
                        onPressed: () {
                          setState(() {
                            formVisible = true;
                            _formsIndex = 2;
                          });
                        },
                        child: Text("Signup")),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:580),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 45,
                    width: 200,
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                        side: BorderSide(color: Colors.red)),
                      ),
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.google),
                        label: const Text("Continue with Google",style: TextStyle(color: Colors.white),)),
                  ),

                ],
              ),
            ),
            AnimatedSwitcher(
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              switchInCurve: Curves.fastLinearToSlowEaseIn,
              switchOutCurve: Curves.easeOutCirc,
              duration: const Duration(milliseconds: 1200),
              child: (!formVisible)
                  ? null
                  : Container(
                color: Colors.black54,
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                            _formsIndex == 1 ? Colors.red : Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: _formsIndex == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _formsIndex = 1;
                            });
                          },
                        ),
                        const SizedBox(width: 10.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                            _formsIndex == 2 ? Colors.red : Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          child: Text("Signup",
                              style: TextStyle(
                                color: _formsIndex == 2
                                    ? Colors.white
                                    : Colors.black,
                              )),
                          onPressed: () {
                            setState(() {
                              _formsIndex = 2;
                            });
                          },
                        ),
                        const SizedBox(width: 10.0),
                        IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            setState(() {
                              formVisible = false;
                            });
                          },
                        )
                      ],
                    ),
                    Container(
                      child: AnimatedSwitcher(
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          return ScaleTransition(
                              scale: animation, child: child);
                        },
                        switchInCurve: Curves.bounceInOut,
                        switchOutCurve: Curves.easeOutCirc,
                        duration: const Duration(milliseconds: 600),
                        child: _formsIndex == 1 ? login() : signup(),
                      ),
                    )
                  ],
                ),
              ),
            ),
    ],
    ),
    ],
    ),
  );
  }
}
class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirm password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text(
              "Signup",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:animator(),));
}


