import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/features/auth/screen/verificationcode.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';
import '../controller/authcontroller.dart';
import 'loginpage.dart';

class ForgotPassword extends ConsumerStatefulWidget {
  const ForgotPassword({super.key});

  @override
  ConsumerState<ForgotPassword> createState() => _ForgotPasswordState();
}


class _ForgotPasswordState extends ConsumerState<ForgotPassword> {
  updatePassword(){
    ref.watch(ControllerProvider).updatepassword(password: currentUSerPassword.toString(), email: emailController.text);
  }
  TextEditingController emailController=TextEditingController();
  final emailValidation=RegExp(r"^[a-z0-9.a-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: ColorConst.primaryColor,
        title: Text("Forgot Password",style: TextStyle(fontSize: width*0.06,color: ColorConst.secondary,fontWeight: FontWeight.bold),),
      ),
      body:
      Column(
        children: [
          Row(
            children: [
              Image.asset(ImageConstant.forgotpassimg)
            ],
          ),
          Column(
            children: [
            Padding(
              padding:  EdgeInsets.all(width*0.05),
              child: TextFormField(
                         controller: emailController,
                         keyboardType: TextInputType.emailAddress,
                         textInputAction: TextInputAction.go,

                         autovalidateMode: AutovalidateMode.onUserInteraction,
                         validator: (value) {
               if(!emailValidation.hasMatch(value!)){
                 return "Enter your email";
               }else{
                 return null;
               }
                         },
                         style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w600),
                         decoration: InputDecoration(
                 labelText: "Email Address",
                 labelStyle: TextStyle(
                   color: ColorConst.eighth,fontSize: width*0.05
                 ),
                 suffix: InkWell(
                     onTap: () {
                       emailController.clear();
                     },
                     child: Icon(Icons.clear)),
               enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: ColorConst.eighth),
                 borderRadius: BorderRadius.circular(width*0.04)
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: ColorConst.eighth),
                   borderRadius: BorderRadius.circular(width*0.04)),
               border: OutlineInputBorder(
                 borderSide: BorderSide(color: ColorConst.eighth),
                   borderRadius: BorderRadius.circular(width*0.04)

               )

                         ),

                       ),
            ),
              SizedBox(height: height*0.28,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Please write your email to receive a\n confirmation code to set a new password.",style: TextStyle(color: ColorConst.eighth),)
                ],
              ),
              SizedBox(height: height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(

                    onTap: () async {
                      updatePassword();
                      EmailOTP.config(
                        appName: 'Email OTP',
                        otpType: OTPType.numeric,
                        emailTheme: EmailTheme.v1,
                          otpLength: 4);

                      if(await EmailOTP.sendOTP(email: emailController.text)==true){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("OTP has been sent")));
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Verificationcode(),));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("OTP send failed")));
                      }

                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height*0.060,
                      width: width*0.65,
                      child: Text("Confirm Mail",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05),),
                      decoration: BoxDecoration(
                        color: ColorConst.thirdColor,
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
