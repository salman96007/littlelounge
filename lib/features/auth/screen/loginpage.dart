import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/colorconstant.dart';
import '../../../constant/imageconstant.dart';
import '../../../main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool toggle =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
      Center(
        child: RichText(text: TextSpan(text: "Welcome\n",style: GoogleFonts.inter(
          textStyle: TextStyle(color: ColorConst.secondary,
          fontSize: width*0.09,
          fontWeight: FontWeight.w600),
        ),
            children: [TextSpan(text:"Please enter your data to continue" ,style: GoogleFonts.inter(
              textStyle: TextStyle(color: ColorConst.eighth,
                fontSize: width*0.05,
                  fontWeight: FontWeight.w400,

              ),
            )),]
        ),textAlign: TextAlign.center,),
      ),
          Padding(
            padding:  EdgeInsets.all(width*0.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      textInputAction:TextInputAction.next,
                      decoration: InputDecoration(
                        labelText:"Username",
                        suffixIcon: SvgPicture.asset(SvgConstant.greenTick,),
                        labelStyle:TextStyle(
                            color: ColorConst.secondary,
                            fontWeight: FontWeight.w400
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.03),
                          borderSide: BorderSide(color: ColorConst.secondary),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.03),
                          borderSide: BorderSide(color: ColorConst.secondary),
                        ),


                      ),



                    ),
                    SizedBox(height: height*0.05,),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      textInputAction:TextInputAction.next,
                      decoration: InputDecoration(
                        labelText:"Password",
                        suffixIcon: Text("Strong",style: TextStyle(
                          color:ColorConst.eightethColor ,
                        ),),
                        labelStyle:TextStyle(
                            color: ColorConst.secondary,
                            fontWeight: FontWeight.w400
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.03),
                          borderSide: BorderSide(color: ColorConst.secondary),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.03),
                          borderSide: BorderSide(color: ColorConst.secondary),
                        ),


                      ),



                    ),
                    SizedBox(height: height*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forgot password?",style: TextStyle(
                          color:ColorConst.sixth,
                        ),)
                      ],
                    ),
                    SizedBox(height: height*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Remember me"),
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                toggle = !toggle;
                                setState(() {});
                              },
                              child: Container(
                                height: width * 0.08,
                                width: width * 0.15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(width * 0.09),
                                  color: toggle == true ? ColorConst.seventeenColor:ColorConst.fourtyColor,
                                ),
                              ),
                            ),

                            AnimatedPositioned(
                                top: width*0.005,

                                left: toggle == true ? width*0.07 :width*0.01,
                                child: InkWell(
                                  onTap: () {
                                    toggle = !toggle;
                                    setState(() {});
                                  },
                                  child: AnimatedContainer(
                                      width: width*0.07,
                                      height: width*0.07,

                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:  toggle == true ? ColorConst.primaryColor:ColorConst.primaryColor),
                                      duration: Duration(
                                        milliseconds: 500,
                                      )),
                                ),
                                duration: const Duration(milliseconds: 200)),
                          ],
                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(height: height*0.09,),


                Column(

                  children: [
                    RichText(text: TextSpan(text: "By connecting your account confirm that you agree\n with our ",style: GoogleFonts.inter(
                      textStyle: TextStyle(color: ColorConst.secondary.withOpacity(0.34)),
                    ),
                        children: [TextSpan(text:"Term and Condition" ,style: GoogleFonts.inter(
                          textStyle: TextStyle(color: ColorConst.secondary,
                              fontWeight: FontWeight.w400),
                        )),]


                    ),textAlign:TextAlign.center,),
                    SizedBox(height: height*0.02,),
                    Container(
                      child: Center(
                        child: Text("Login",style: TextStyle(
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
                    )
                  ],
                ),
              ],
            ),
          )


          ],
      ),
    );
  }
}
