import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/main.dart';

class CreatAccount extends StatelessWidget {
  const CreatAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Text("Let’s Get Started",style: TextStyle(
            fontSize: width*0.05,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: height*0.2,),
          Center(
            child: Column(
              children: [
                Container(
                  height: height*0.05,
                  width: width*0.7,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImageConstant.facebookImg),
                      Text("Facebook",
                        style:TextStyle(color: ColorConst.primaryColor,
                        fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color:ColorConst.tenth
                  ),
                ),
                SizedBox(height: height*0.01,),
                Container(
                  height: height*0.05,
                  width: width*0.7,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(SvgConstant.twitter),
                      Text("Twitter",
                        style:TextStyle(color: ColorConst.primaryColor,
                        fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color:ColorConst.fifth
                  ),
                ),
                SizedBox(height: height*0.01,),
                Container(
                  height: height*0.05,
                  width: width*0.7,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(SvgConstant.google),
                      Text("Google",
                        style:TextStyle(color: ColorConst.primaryColor,
                        fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color:ColorConst.sixth
                  ),
                ),
              ],
            ),
          )
        ],
      ),


    );
  }
}
