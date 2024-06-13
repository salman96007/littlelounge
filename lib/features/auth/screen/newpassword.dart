import 'package:flutter/material.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController=TextEditingController();
    final passwordValidation=RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: ColorConst.primaryColor,
        title: Text("New Password",style: TextStyle(fontSize: width*0.06,color: ColorConst.secondary,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding:  EdgeInsets.all(width*0.02),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.go,

                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(!passwordValidation.hasMatch(value!)){
                      return "Enter your password";
                    }else{
                      return null;
                    }
                  },
                  style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: ColorConst.eighth,fontSize: width*0.05
                      ),
                      suffix: InkWell(
                          onTap: () {
                            passwordController.clear();
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
              Padding(
                padding:  EdgeInsets.all(width*0.02),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.go,

                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(!passwordValidation.hasMatch(value!)){
                      return "Re-Enter your password";
                    }else{
                      return null;
                    }
                  },
                  style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                          color: ColorConst.eighth,fontSize: width*0.05
                      ),
                      suffix: InkWell(
                          onTap: () {
                            passwordController.clear();
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
            ],
          ),
          SizedBox(
            height: height*0.1,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Please write your new password.",style: TextStyle(color: ColorConst.eighth),)
                ],
              ),
              SizedBox(
                height: height*0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: height*0.060,
                    width: width*0.65,
                    child: Text("Reset Password",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05),),
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
