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
             Image.asset(ImageConstant.finallogo,width: width*0.56,),
              RichText(text: TextSpan(text: "LITTLELOUNGE\n",   style: GoogleFonts.firaSans(
                textStyle : TextStyle(color: ColorConst.primaryColor,
                  fontSize:width*0.10, ),

              ),
                children: [
                  TextSpan(text:"Grow With Trend",
                    style:GoogleFonts.sacramento(
                      textStyle : TextStyle(color: ColorConst.primaryColor,
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
