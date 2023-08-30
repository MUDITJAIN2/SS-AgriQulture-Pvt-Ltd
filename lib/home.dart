import 'package:flutter/material.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/container1.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/videopage.dart';
import 'package:ss_agriqulture_pvt_ltd/widgets/navbar.dart';
import 'package:ss_agriqulture_pvt_ltd/util/constants.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/container2.dart';

class Home extends StatefulWidget {
   Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width; // defining contants in widget build
    h = MediaQuery.of(context).size.height;
    return Scaffold(
       body: SingleChildScrollView(
        child: Container(
          child:  Column(
        // calling widgets and pages
        children: [NavBar(),Container1(),VideoPage(),Container2()],
       )
      ),
     )
    );
  }
}