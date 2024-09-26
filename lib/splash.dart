import 'dart:async';

import 'package:ayurvedic/loggin.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



Future<void> splash(context) async {
  Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyLoggin())));
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splash(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height:MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/iPhone 13 & 14 - 1.png",
                  ),
                  fit: BoxFit.fill))),
    );
  }
}
