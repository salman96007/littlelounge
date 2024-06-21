import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/features/auth/screen/signuppage.dart';
import 'package:littlelounge/main.dart';

class CreatAccount extends StatelessWidget {
  const CreatAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Let’s Get Started",style: TextStyle(
            fontSize: width*0.05,
            fontWeight: FontWeight.bold,
          ),),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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

          ),
          Column(
            children: [
              RichText(text: TextSpan(text: "Already have an account?",style: GoogleFonts.inter(
                textStyle: TextStyle(color: ColorConst.secondary.withOpacity(0.34)),
              ),
                  children: [TextSpan(text:"Signin" ,style: GoogleFonts.inter(
                    textStyle: TextStyle(color: ColorConst.secondary,
                        fontWeight: FontWeight.w400),
                  )),]


              )),
              SizedBox(height: height*0.02,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
                },
                child: Container(
                  child: Center(
                    child: Text("Create an Account",style: TextStyle(
                      fontSize: width*0.04,
                      color: ColorConst.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  height: height*0.07,
                  width: width*0.88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.07),
                    color: ColorConst.thirdColor,
                  ),
                ),
              )
            ],
          ),
        ],

      ),


    );
  }
}
