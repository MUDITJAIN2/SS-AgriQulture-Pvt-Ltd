import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ss_agriqulture_pvt_ltd/util/constants.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/container2.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }

  Widget MobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(
            onTap: () {
              // Add the onPressed action for the logo here
              // For example, you can navigate to a different screen:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Container2()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget DesktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.only(right: 1125.0),
        child: navLogo(
          onTap: () {
            // Add the onPressed action for the logo here
            // For example, you can navigate to a different screen:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Container2()),
            );
          },
        ),
      ),
    );
  }

  Widget navLogo({VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(logo),
          ),
        ),
      ),
    );
  }
}
