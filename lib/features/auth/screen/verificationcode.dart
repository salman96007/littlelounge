import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:pinput/pinput.dart';

import '../../../constant/imageconstant.dart';
import '../../../main.dart';

class Verificationcode extends ConsumerStatefulWidget {
  const Verificationcode({super.key});

  @override
  ConsumerState<Verificationcode> createState() => _VerificationcodeState();
}

class _VerificationcodeState extends ConsumerState<Verificationcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: ColorConst.primaryColor,
        title: Text("Verification Code",style: TextStyle(color: ColorConst.secondary),),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(ImageConstant.forgotpassimg)
            ],
          ),
          SizedBox(height: height*0.1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Pinput(
                length: 4,
              )
            ],
          ),
          SizedBox(height: height*0.15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("00:20",style: TextStyle(fontSize: width*0.06,color: ColorConst.secondary),),
              Text(" resend confirmation code.",style: TextStyle(fontSize: width*0.055,color: ColorConst.eighth),)
            ],
          ),
          SizedBox(height: height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: height*0.060,
                width: width*0.65,
                child: Text("Confirm Code",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05),),
                decoration: BoxDecoration(
                    color: ColorConst.thirdColor,
                    borderRadius: BorderRadius.circular(width*0.03)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
