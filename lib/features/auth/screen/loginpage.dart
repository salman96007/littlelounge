import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/features/auth/controller/authcontroller.dart';
import 'package:littlelounge/features/auth/screen/forgotpassword.dart';
import 'package:littlelounge/features/auth/screen/newpassword.dart';


import '../../../constant/colorconstant.dart';
import '../../../main.dart';
String? currentUSerName ;
String? currentUSerEmail;
String? currentUSerPassword;
String? currentUSerId;
String? currentUserImage;
String? googlename ;
String?  userCredential;
class Login extends ConsumerStatefulWidget {
  const Login({super.key});

  @override
  ConsumerState<Login> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {

  loginAuth({required String email, required String password}){
    ref.watch(ControllerProvider).authLogin(email: usernameController.text,
      password: passwordController.text, context: context,


    );


  }
  TextEditingController usernameController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  final passwordValidation=  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?).{8,}$');
  final formkey= GlobalKey<FormState>();

  bool toggle =false;
  bool pass=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
      ),
      body: Form(
        key: formkey,
        child: Column(
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
                        controller:usernameController ,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction:TextInputAction.next,
                        decoration: InputDecoration(
                          labelText:"Username",
                          suffixIcon:Icon(CupertinoIcons.person,color:ColorConst.eightethColor,),
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
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction:TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText:pass?true:false,
                        validator: (value) {
                          if(!passwordValidation.hasMatch(value!)){
                            return "Enter the Valid Password \n"
                                " it must contain 8 characters \n"
                                " 1 LowerCase (a-z) \n"
                                " 1 UpperCase (A-Z) \n"
                                " 1 numeric character (0-9) \n"
                                " 1 special character (#&*? etc...) \n";
                          }else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          labelText:"Password",
                          suffixIcon: InkWell(
                              onTap: () {
                                pass=!pass;
                                setState(() {
                                });
                              },
                              child:pass?Icon(CupertinoIcons.eye_slash,color:ColorConst.eightethColor,):Icon(CupertinoIcons.eye,color:ColorConst.eightethColor)),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword(),));
                            },
                            child: Text("Forgot password?",style: TextStyle(
                              color:ColorConst.sixth,
                            ),),
                          )
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
                      InkWell(
                        onTap: () {
                          if(usernameController.text !="" &&
                              passwordController.text != "" &&
                              formkey.currentState!.validate()

                          ){
                            loginAuth(email: usernameController.text, password: passwordController.text);

                          }else{
                            usernameController.text==""?ScaffoldMessenger.of(context).
                            showSnackBar(SnackBar(content: Text("please Enter your name"))):
                            passwordController.text ==""? ScaffoldMessenger.of(context).
                            showSnackBar(SnackBar(content: Text("please Enter valid password"))):
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please Enter your valid details")));

                          }


                        },
                        child: Container(
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
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
