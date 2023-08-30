import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ss_agriqulture_pvt_ltd/util/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
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
          image: AssetImage('assets/image/im.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'GROW YOU\nOWN INDOOR\nGARDEN',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget desktop1() {
    return Row(
      children: [
        Expanded(
          flex: 2, // Adjust flex values as needed
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              '🌱 GREEN MUSTARD\n AND \nPINK RADISH \nMICROGREENS',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          flex: 3, // Adjust flex values as needed
          child: Container(
              height: h! / 1.2, // giving responsive h and width
              width: w! / 1.2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(poha),
                fit: BoxFit.contain,
              )),
          ),
        ),
      ],
    );
  }
}
