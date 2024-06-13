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
              padding:  EdgeInsets.all(width*0.03),
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
               enabledBorder: UnderlineInputBorder(
                 borderSide: BorderSide(color: ColorConst.eighth),
               ),
               border: UnderlineInputBorder(
                 borderSide: BorderSide(color: ColorConst.eighth)
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
                  Container(
                    alignment: Alignment.center,
                    height: height*0.060,
                    width: width*0.65,
                    child: Text("Confirm Mail",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05),),
                    decoration: BoxDecoration(
                      color: ColorConst.thirdColor,
                      borderRadius: BorderRadius.circular(width*0.03)
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
