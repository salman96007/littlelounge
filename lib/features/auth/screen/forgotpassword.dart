import 'package:flutter/material.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  @override
  Widget build(BuildContext context) {

    TextEditingController emailController=TextEditingController();
    final emailValidation=RegExp(r"^[a-z0-9.a-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    return  Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("Forgot Password",style: TextStyle(fontSize: width*0.06,color: ColorConst.secondary,fontWeight: FontWeight.bold),)
            ],
          ),
          Row(
            children: [
              Image.asset(ImageConstant.forgotpassimg)
            ],
          ),
          Row(
            children: [
         TextFormField(
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
               suffix: InkWell(
                   onTap: () {
                     emailController.clear();
                   },
                   child: Icon(Icons.clear)),

           ),

         )
            ],
          )
        ],
      ),
    );
  }
}
