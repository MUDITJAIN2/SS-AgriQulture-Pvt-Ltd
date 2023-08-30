import 'package:flutter/material.dart';
import 'package:ss_agriqulture_pvt_ltd/home.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SS Agriqulture',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor:  Color.fromARGB(255, 58, 143, 183)),
        useMaterial3: true,
      ),
      home:   Home(),
    );
  }
}

