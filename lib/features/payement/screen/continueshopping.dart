import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../main.dart';

class Continueshopping extends StatefulWidget {
  const Continueshopping({super.key});

  @override
  State<Continueshopping> createState() => _ContinueshoppingState();
}

class _ContinueshoppingState extends State<Continueshopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConst.primaryColor,
      appBar: AppBar(
        backgroundColor:ColorConst.primaryColor,
        elevation: 0,
      ),
      body:Center(
        child: Column(
          children: [
            Container(
              height:height*0.43,
              width:width*0.75,
              //color:Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height:height*0.3,
                    width:width*0.75,
                    //color:Colors.red,
                    child:Image.asset(ImageConstant.image2),
                  ),
                ],
              ),
            ),
            SizedBox(height:height*0.012),
            Text("Order Confirmed!",style:TextStyle(
              fontWeight:FontWeight.w600,
              fontSize:width*0.06
            ),),
            SizedBox(height:height*0.01,),
            Text("Your order has been confirmed, we will send \nyou confirmation email shortly.",
              textAlign:TextAlign.center,
              style:TextStyle(
                color: ColorConst.eighth
            ),),
            SizedBox(
              width:width*07,
              height:height*0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: height*0.07,
                    width: width*0.88,
                    child: Center(
                      child: Text("Continue Shopping",style: TextStyle(
                        fontSize: width*0.04,
                        color: ColorConst.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.07),
                      color: ColorConst.thirdColor,
                    ),
                  )
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
