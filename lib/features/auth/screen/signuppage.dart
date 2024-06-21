import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool toggle =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              height: height*0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction:TextInputAction.next,
                    decoration: InputDecoration(
                      labelText:"Username",
                      suffixIcon: SvgPicture.asset(SvgConstant.greenTick,fit: BoxFit.none,),
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
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction:TextInputAction.next,
                    decoration: InputDecoration(
                      labelText:"Password",
                      suffixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Strong",style: TextStyle(
                            fontSize: width*0.03,
                            color:ColorConst.eightethColor ,
                          ),),
                        ],
                      ),
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
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction:TextInputAction.next,
                    decoration: InputDecoration(
                      labelText:"Email Addresse",
                      suffixIcon: SvgPicture.asset(SvgConstant.greenTick,fit: BoxFit.none,),
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
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text("Sign Up",style: TextStyle(
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
            )


          ],
        ),
      ),
    );;
  }
}
