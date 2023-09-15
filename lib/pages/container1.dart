import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/container2.dart';
import 'package:ss_agriqulture_pvt_ltd/util/constants.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/videopage.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  void initState() {
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
          image: AssetImage('assets/image/dishes/poha.jpeg'), // Use the correct asset path
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'GROW YOUR',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              Text(
                'OWN INDOOR',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              Text(
                'GARDEN',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              Text(
                'Get Started',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget desktop1() {
    return Container(
      height: h,
      width: w,
      child: Row(
        children: [
          Column(
            children: [
              const SizedBox(height: 40,),
              navButton('OUR GARDEN'),
              const SizedBox(height: 40,),
              navButton('WALK THROUGH'),
              const SizedBox(height: 40,),
              navButton('BUY NOW'),
              const SizedBox(height: 40,),
              navButton('FAQ'),
              const SizedBox(height: 40,),
              navButton('ABOUT US'),
              const SizedBox(height: 40,),
              navButton('CONTACT US'),
              const SizedBox(height: 80,),
              navButtton('⚙️'),
            ],
          ),
          Column(
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 15),
                  child: Text(
                    'GROW YOUR\nOWN \nINDOOR GARDEN',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ), ]),
              Padding(
                padding: const EdgeInsets.only(bottom:300.0),
                child: Container(
                  height: 500,
                  width:625,
                  child: VideoPage()),
              ),
              
            ],
          ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
        onPressed: () {
          if (text == 'WALK THROUGH') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Container2()),
            );
          }
          // Add actions for other buttons here
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
  Widget navButtton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
        onPressed: () {
          if (text == 'WALK THROUGH') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Container2()),
            );
          }
          // Add actions for other buttons here
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
