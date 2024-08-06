import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/features/auth/screen/loginpage.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';
import '../controller/authcontroller.dart';

class NewPassword extends ConsumerStatefulWidget {
  const NewPassword({super.key});

  @override
  ConsumerState<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends ConsumerState<NewPassword> {
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  final passwordValidation=RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$");

  updatePassword(){
    ref.watch(ControllerProvider).updatepassword(password: passwordController.text, email: currentUSerEmail.toString());
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("password has been changed")));
  }



  @override
  Widget build(BuildContext context) {
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
                padding:  EdgeInsets.all(width*0.05),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: (value) {
                  //   if(!passwordValidation.hasMatch(value!)){
                  //     return "Enter your password";
                  //   }else{
                  //     return null;
                  //   }
                  // },
                  style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      labelText: "Password...",
                      labelStyle: TextStyle(
                          color: ColorConst.secondary,fontSize: width*0.05
                      ),
                      suffix: InkWell(
                          onTap: () {
                            passwordController.clear();
                          },
                          child: Icon(Icons.clear)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorConst.secondary),
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorConst.secondary),
                          borderRadius: BorderRadius.circular(width*0.03)

                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorConst.secondary),
                        borderRadius: BorderRadius.circular(width*0.03)

                    ),

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
                  GestureDetector(
                    onTap: () {
                      updatePassword();
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Login(),), (route) => false,);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height*0.060,
                      width: width*0.65,
                      child: Text("Reset Password",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05),),
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
