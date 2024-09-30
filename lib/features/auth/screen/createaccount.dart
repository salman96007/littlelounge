import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/features/auth/controller/authcontroller.dart';
import 'package:littlelounge/features/auth/screen/loginpage.dart';
import 'package:littlelounge/features/auth/screen/signuppage.dart';
import 'package:littlelounge/features/home/screen/welcomepage.dart';
import 'package:littlelounge/main.dart';


class CreatAccount extends ConsumerStatefulWidget {
  const CreatAccount({super.key});

  @override
  ConsumerState<CreatAccount> createState() => _CreatAccountState();
}

class _CreatAccountState extends ConsumerState<CreatAccount> {

  loginGoogle(){
    ref.watch(ControllerProvider).google(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body: Column(
        children: [
          Container(
            height: height*1,
            width: width*1,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageConstant.bg),fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: height*0.04,),

                          Text("Let’s Get Started",style: TextStyle(
                            fontSize: width*0.05,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: height*0.05,),
                          GestureDetector(
                            onTap: () {
                              loginGoogle();
                            },
                            child: Container(
                              height: height*0.3,
                              width: width*0.3,

                              child:Image.asset(ImageConstant.google2,width: width*0.03,),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.03),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                      },
                      child: RichText(text: TextSpan(text: "Already have an account?",style: GoogleFonts.inter(
                        textStyle: TextStyle(color: ColorConst.secondary.withOpacity(0.34)),
                      ),
                          children: [TextSpan(text:"Signin" ,style: GoogleFonts.inter(
                            textStyle: TextStyle(color: ColorConst.primaryColor,
                                fontWeight: FontWeight.w400),
                          )),]


                      )),
                    ),
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
          ),
        ],

      ),


    );
  }
}
