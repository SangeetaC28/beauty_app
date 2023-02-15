import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/login_screen.dart';

void main() { runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => LoginScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {

    return
      Image.network('https://wallpaperaccess.com/full/1190462.jpg');
  }
}


