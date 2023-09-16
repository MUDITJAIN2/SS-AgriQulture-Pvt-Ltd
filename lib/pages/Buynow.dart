import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/container2.dart';
import 'package:ss_agriqulture_pvt_ltd/util/constants.dart';

class Buynow extends StatefulWidget {
  const Buynow({Key? key}) : super(key: key);

  @override
  State<Buynow> createState() => _BuynowState();
}

class _BuynowState extends State<Buynow> {
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
    return Container();
  }

  Widget desktop1() {
    return Center(
      child: Container(
        width: w, // Occupies the entire screen width
        height: h, // Occupies the entire screen height
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container 1
            GestureDetector(
              onTap: () {
                // Navigate to Buynow on Page2 when Container 1 is tapped
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Container2(),
                ));
              },
              child: Container(
                width: 200,
                height: 300,
                color: Colors.green[300],
                child: Center(
                  child: Text(
                    'Buy Seeds',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(width: 20),

            // Container 2
            GestureDetector(
              onTap: () {
                // Navigate to Buynow on Page2 when Container 2 is tapped
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Container2(),
                ));
              },
              child: Container(
                width: 200,
                height: 300,
                color: Colors.green[300],
                child: Center(
                  child: Text(
                    'Buy Pads',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(width: 20),

            // Container 3
            GestureDetector(
              onTap: () {
                // Navigate to Buynow on Page2 when Container 3 is tapped
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Container2(),
                ));
              },
              child: Container(
                width: 200,
                height: 300,
                color: Colors.green[300],
                child: Center(
                  child: Text(
                    'Buy Full Setup',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
