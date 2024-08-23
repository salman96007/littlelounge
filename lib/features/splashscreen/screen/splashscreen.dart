  import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/features/auth/screen/createaccount.dart';
import 'package:littlelounge/features/auth/screen/loginpage.dart';
import 'package:littlelounge/features/bottomnavigation/screen/bottomnavigation.dart';
import 'package:littlelounge/features/home/screen/welcomepage.dart';
import 'package:littlelounge/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home/screen/homepage.dart';

class SplashScreen extends ConsumerStatefulWidget {
    const SplashScreen({super.key});

    @override
    ConsumerState<SplashScreen> createState() => _SplashScreenState();
  }

  class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  bool login=false ;
  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    login = prefs.getBool("login")?? false;
    Future.delayed(Duration(
        seconds: 3
    )).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login?WelcomPage():Login(),)));
  }
  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }
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

                    ), )
              ],
             ),textAlign: TextAlign.center,),
              SizedBox(height: height*0.05,),

              CircularProgressIndicator(
                color:ColorConst.primaryColor,
                backgroundColor:ColorConst.forth,
              )
            ],

          ),
        ),

      );
    }
  }
