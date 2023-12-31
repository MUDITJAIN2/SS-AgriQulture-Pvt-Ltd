import 'package:flutter/material.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/Buynow.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/Faq.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/container1.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/page2.dart';
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
        child: Column(
        // calling widgets and pages
        children: [NavBar(),Container1(),Page2(),Buynow(),Faq()],
       ),
     )
    );
  }
}