  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/main.dart';

import '../../../constant/colorconstant.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConst.primaryColor,
          elevation: 1,
        ),
        drawer: Drawer(
          backgroundColor: ColorConst.primaryColor,
      child: ListView(
      children:  [
         ListTile(
           leading: Image.asset(ImageConstant.boy1),
           title: Text("Hemendra",style: TextStyle(
             color: ColorConst.secondary,
             fontWeight: FontWeight.w500,
             fontSize: width*0.05
           ),),
           subtitle: Row(
              children: [
                Text("Verified Profile",style: TextStyle(
                   color: ColorConst.twelthColor,
                  fontWeight: FontWeight.w400,
                    fontSize: width*0.035
                ),),
                SvgPicture.asset(SvgConstant.badge),

              ],
           ),
           trailing: Container(
             alignment: Alignment.center,
              height: height*0.04,
              width: width*0.14,
             child: Text("3 Orders",style: TextStyle(
               color: ColorConst.eighth,
                 fontSize: width*0.03
             ),),
             decoration: BoxDecoration(
               color: ColorConst.thirtyColor,
               borderRadius: BorderRadius.circular(width*0.02)
               // borderRadius: BorderRadius.circular(radius)
             ),
           ),
         )
       
          ],
         ),
       ),
      );
    }
  }
