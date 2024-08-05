import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/features/auth/screen/loginpage.dart';
import 'package:littlelounge/features/auth/screen/newpassword.dart';
import 'package:pinput/pinput.dart';

import '../../../constant/imageconstant.dart';
import '../../../main.dart';
import '../controller/authcontroller.dart';

class VerificationCode extends ConsumerStatefulWidget {
  const VerificationCode({super.key});

  @override
  ConsumerState<VerificationCode> createState() => _VerificationcodeState();
}

class _VerificationcodeState extends ConsumerState<VerificationCode> {

  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: ColorConst.primaryColor,
        title: Text("Verification Code",style: TextStyle(color: ColorConst.secondary),),
      ),
      body: Column(
        children: [
          Center(child: Image.asset(ImageConstant.forgotpassimg)),
          SizedBox(height: height*0.1,),
          Pinput(
            controller: otpController,
            length: 4,
          ),
          SizedBox(height: height*0.15,),
          GestureDetector(
            onTap: () {
              if(EmailOTP.verifyOTP(otp: otpController.text)==true){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("OTP Verifyed")));
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewPassword(),));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("plese check currect verifyCode")));
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: height*0.060,
              width: width*0.65,
              child: Text("Confirm Code",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05),),
              decoration: BoxDecoration(
                  color: ColorConst.thirdColor,
                  borderRadius: BorderRadius.circular(width*0.03)
              ),
            ),
          )
        ],
      ),
    );
  }
}
