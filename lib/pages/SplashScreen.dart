import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:lottie/lottie.dart';
import 'package:ss_agriqulture_pvt_ltd/home.dart';
import 'package:ss_agriqulture_pvt_ltd/util/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>  Home(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // Adjust the width and height as needed
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(splogo), 
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
