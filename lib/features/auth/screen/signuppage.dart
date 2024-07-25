import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/features/auth/controller/authcontroller.dart';
import 'package:littlelounge/features/home/screen/homepage.dart';
import 'package:littlelounge/features/home/screen/welcomepage.dart';
import 'package:littlelounge/model/usermodel.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';
import 'loginpage.dart';



class Signup extends ConsumerStatefulWidget {
  const Signup({super.key});

  @override
  ConsumerState<Signup> createState() => _SignupState();
}

class _SignupState extends ConsumerState<Signup> {
  final emailvalidation=RegExp(r"^[a-z-0-9.a-z-0-9.!#$%&'*+-/=?^_`{|}~]+@[a-z-0-9]+\.[a-z-]+");
  final passwordValidation=  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?).{8,}$');
  final formkey= GlobalKey<FormState>();
  bool pass=false;


  add(){
    ref.watch(ControllerProvider).addUser(detail: UserModel(
        name: usernameController.text,
        password: passwordController.text,
        email: emailController.text,
        id: "", imageUrl: ""));
      currentUSerName =usernameController.text;
      currentUserImage =currentUserImage.toString();
      Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomPage(),));

  }



  TextEditingController usernameController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController emailController =TextEditingController();
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
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      controller: usernameController,
                      keyboardType: TextInputType.name,
                      textInputAction:TextInputAction.next,
                      textCapitalization: TextCapitalization.words,
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
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorConst.secondary,
                          ),
                          borderRadius: BorderRadius.circular(width*0.03)
                        )


                      ),



                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction:TextInputAction.next,
                      decoration: InputDecoration(
                        labelText:"Email Addresse",
                        suffixIcon: Icon(Icons.email_outlined,color:ColorConst.eightethColor),
                        labelStyle:TextStyle(
                            color: ColorConst.secondary,
                            fontWeight: FontWeight.w400,
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
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if(usernameController.text !="" &&
                      passwordController.text != "" &&
                      emailController.text != ""&&
                      formkey.currentState!.validate()
                    ){
                      add();
                    }else{
                         usernameController.text==""?ScaffoldMessenger.of(context).
                         showSnackBar(SnackBar(content: Text("please Enter your name"))):
                         passwordController.text ==""? ScaffoldMessenger.of(context).
                         showSnackBar(SnackBar(content: Text("please Enter valid password"))):
                             emailController.text ==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please Enter your valid email address"))):
                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please Enter your valid details")));

                    }

                  },
                  child: Container(
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
