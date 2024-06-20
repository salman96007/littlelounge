import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../main.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child:Column(
              children: [
                Image.asset(ImageConstant.welcom),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: height*0.02,),
                      Text("Look Good, Feel Good",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.06
                      ),),
                      Text("Create your individual & unique style and look amazing everyday.",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color:ColorConst.twelthColor,
                      ),textAlign: TextAlign.center,),
                      Padding(
                        padding:  EdgeInsets.all(width*0.09),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Center(child: Text("Women",style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),)),
                              height: height*0.10,
                              width: width*0.30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.022),
                                color:ColorConst.sixteenColor,
                              ),
                            ),
                            SizedBox(width: width*0.04,),
                            Container(
                              height: height*0.10,
                              width: width*0.30,
                              child: Center(child: Text("Men",style: TextStyle(
                                fontWeight: FontWeight.w500,

                                color: ColorConst.primaryColor,
                              ),)),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.022),
                                color:ColorConst.thirdColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Skip",style: TextStyle(
                            color: ColorConst.twelthColor
                          ),)
                        ],
                      )
                    ],
                  ),
                  height: height*0.36,
                  width: width*0.9,
                  decoration: BoxDecoration(
                    color: ColorConst.primaryColor,
                    borderRadius: BorderRadius.circular(width*0.04),
                  ),

                )
              ],
            ) ,
            height: height*1,
            width: width*1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.05,0.7],
                  colors: [
                ColorConst.thirdColor.withOpacity(0.5),
                ColorConst.thirdColor,
              ]
              )
            ),
          ),


         ],
      ),

    );
  }
}
