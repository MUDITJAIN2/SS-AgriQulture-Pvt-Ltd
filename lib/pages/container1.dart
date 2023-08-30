import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
//import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  void initState() 
  {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile1(),
      desktop: desktop1(),
    );
  }
  
  Widget mobile1() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/im.jpg'), // Use the correct asset path
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'GROW YOUR\nOWN INDOOR\nGARDEN',
            style: TextStyle(
              fontSize: 40, // Adjust the font size as needed
              fontWeight: FontWeight.bold,
              color: Colors.white, // Set the text color
              height: 1.5, // Adjust the line height as needed
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      
    );
  }
  
  Widget desktop1() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
          child: Image.network(
            'https://cdn.autonomous.ai/static/upload/images/product/galleries/1898.2532--1643360579704.jpg', // Use the correct image URL
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: const Padding(
            padding: EdgeInsets.only(left:70.0),
            child: Text(
              'GROW YOUR\nOWN INDOOR\nGARDEN',
              style: TextStyle(
                fontSize: 75, // Adjust the font size as needed
                fontWeight: FontWeight.bold,
                color: Colors.black,
                 // Set the text color
                height: 1.5, // Adjust the line height as needed
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
