import 'package:flutter/material.dart';
//import 'package:flutter_web_app/utils/colors.dart';
//import 'package:flutter_web_app/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ss_agriqulture_pvt_ltd/util/constants.dart';
import 'package:ss_agriqulture_pvt_ltd/pages/container2.dart';

class NavBar extends StatefulWidget { // see class name
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout( 
      //screen type layout is use for make diffrent ui for diffrent screens
      mobile: MobileNavBar(), 
      desktop: DesktopNavBar(),
     // tablet: TabletNavBar(),
    );
  }

   //=================MOBILE===============

   Widget MobileNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
   }

  //=================DESKTOP===============

   Widget DesktopNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
       height: 70,
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [  
          navLogo(),
          const SizedBox(width: 120,),
          Row(
            children: [
              navButton('OUR GARDEN'),
               const SizedBox(width: 20,),
              navButton('RECEPIES'),
              const SizedBox(width: 20,),
              navButton('SHOP'),
              const SizedBox(width: 20,),
              navButton('FAQ'),
              const SizedBox(width: 20,),
              navButton('ABOUT US'),
              const SizedBox(width: 20,),
              navButton('CONTACT US'),
            ],
          ),
        /*  Container(
            height: 45,
            child: ElevatedButton(
             // style:borderedButtonStyle,
               onPressed:(){},
              child: Text('Request a Demo',
            //  style:TextStyle(color: AppColors.primary)
             ),
             ),
          )*/
        ],
      ),
    );
   }

   Widget navButton(String text){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(onPressed: ( )
      {
        if (text == 'RECEPIES') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Container2()),
            );
          }
      },
      child: Text(text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20, 
      ),
      ),
      ),
    );
   }
   
   Widget navLogo(){
    return Container(
       width: 110,
       decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(logo))
        ),
     );
   }
} 