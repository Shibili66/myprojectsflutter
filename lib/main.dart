import 'dart:async';

import 'package:application1/Home.dart';
import 'package:flutter/material.dart';

void main() {
  var colors;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

   Timer(const Duration(seconds: 5), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
   });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
        "https://media.istockphoto.com/videos/colored-smoke-on-a-dark-background-blue-and-red-light-with-smoke-video-id1341408852?b=1&k=20&m=1341408852&s=640x640&h=C6ymXpr_Jn6-WqQmHHuS8z6TGBtkWDQ9x6tFs_hsBjs=")
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
             Image(
               image: AssetImage('asscts/images/money-bag.png'),
               height: 100,width: 100,
             ),
              Text('Hallo',style: TextStyle(fontSize: 50,color: Colors.white24)),
            ],
          ),
        ),
      ),
    );
  }
}
