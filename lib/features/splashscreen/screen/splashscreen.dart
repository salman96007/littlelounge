  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/main.dart';

class SplashScreen extends StatefulWidget {
    const SplashScreen({super.key});

    @override
    State<SplashScreen> createState() => _SplashScreenState();
  }

  class _SplashScreenState extends State<SplashScreen> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(

        backgroundColor: ColorConst.seventh,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.asset(ImageConstant.modelLogo),
              RichText(text: TextSpan(text: "STYLISH\n",   style: GoogleFonts.firaSans(
                textStyle : TextStyle(color: ColorConst.primeryColor,
                  fontSize:width*0.13, ),

              ),
                children: [
                  TextSpan(text:"Find Your Slyle",
                    style:GoogleFonts.sacramento(
                      textStyle : TextStyle(color: ColorConst.primeryColor,
                      fontSize: width*0.12),

                    ) )
              ],
             ),textAlign: TextAlign.center,),


            ],

          ),
        ),

      );
    }
  }
