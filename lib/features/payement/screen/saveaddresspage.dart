import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/features/cart/screen/checkoutpage.dart';
import 'package:littlelounge/features/payement/screen/continueshopping.dart';
import 'package:littlelounge/features/payement/screen/selectaddress.dart';
import 'package:littlelounge/model/addressmodel.dart';
import 'package:littlelounge/model/usermodel.dart';

import '../../../main.dart';
import '../../auth/controller/authcontroller.dart';
List? currentUseraddress;

class Saveaddresspage extends ConsumerStatefulWidget {
  const Saveaddresspage({super.key});

  @override
  ConsumerState<Saveaddresspage> createState() => _SaveaddresspageState();
}

class _SaveaddresspageState extends ConsumerState<Saveaddresspage> {
  TextEditingController nameController=TextEditingController();
  TextEditingController countryController=TextEditingController();
  TextEditingController cityController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
  TextEditingController addressController=TextEditingController();

  bool toggle = false;
   addressadd({required UserModel detail, required Map<String,dynamic> adreess}){

     List addressList = detail.address;
     addressList.add(adreess);

     ref.watch(ControllerProvider).updateaddress(detail.copyWith(address:addressList ));
   }
    Map<String,dynamic> adreess ={};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.primaryColor,
      resizeToAvoidBottomInset:false,
      appBar: AppBar(
        backgroundColor: ColorConst.primaryColor,
        title: Text("Add delivery address",style: GoogleFonts.inter(
          fontWeight:FontWeight.w600,
          color: ColorConst.secondary
        ),),
        centerTitle: true,
      ),
      body:Padding(
        padding:EdgeInsets.only(bottom:height*0.015,),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width:width*0.88,
                height:height*0.11,
                //color:Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Name",style:GoogleFonts.inter(
                      color: ColorConst.nineth,
                      fontWeight: FontWeight.w500,
                      fontSize:width*0.043
                    ),),
                    TextFormField (
                      controller: nameController,
                      keyboardType:TextInputType.name,
                      textInputAction:TextInputAction.next,
                      style:TextStyle(
                        color:ColorConst.eighth,
                        fontSize:width*0.045
                      ),
                      decoration: InputDecoration(
                        constraints:BoxConstraints(
                            maxHeight:width*0.2
                        ),
                        fillColor:ColorConst.eleventh,
                        filled: true,
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                              color:ColorConst.eleventh.withOpacity(0.5)
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:ColorConst.eleventh
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:height*0.015),
              Row(
                crossAxisAlignment:CrossAxisAlignment.start,
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width:width*0.43,
                    height:height*0.12,
                    //color: Colors.red,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text("Country",style:GoogleFonts.inter(
                            color: ColorConst.nineth,
                            fontWeight: FontWeight.w500,
                            fontSize:width*0.043
                        ),),
                        TextFormField(
                          controller: countryController,
                          keyboardType:TextInputType.text,
                          textInputAction:TextInputAction.next,
                          style:TextStyle(
                              color:ColorConst.eighth,
                              fontSize:width*0.045
                          ),
                          decoration: InputDecoration(
                            constraints:BoxConstraints(
                                maxHeight:width*0.2
                            ),
                            fillColor:ColorConst.eleventh,
                            filled: true,
                            enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:ColorConst.eleventh.withOpacity(0.5)
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:ColorConst.eleventh
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:width*0.43,
                    height:height*0.12,
                    //color: Colors.red,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text("City",style:GoogleFonts.inter(
                            color: ColorConst.nineth,
                            fontWeight: FontWeight.w500,
                            fontSize:width*0.043
                        ),),
                        TextFormField(
                          controller: cityController,
                          keyboardType:TextInputType.text,
                          textInputAction:TextInputAction.next,
                          style:TextStyle(
                              color:ColorConst.eighth,
                              fontSize:width*0.045
                          ),
                          decoration: InputDecoration(
                            constraints:BoxConstraints(
                                maxHeight:width*0.2
                            ),
                            fillColor:ColorConst.eleventh,
                            filled: true,
                            enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:ColorConst.eleventh.withOpacity(0.5)
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:ColorConst.eleventh
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height:height*0.015),
              SizedBox(
                width:width*0.88,
                height:height*0.11,
                //color:Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Phone Number",style:GoogleFonts.inter(
                        color: ColorConst.nineth,
                        fontWeight: FontWeight.w500,
                        fontSize:width*0.043
                    ),),
                    TextFormField(
                      controller:phoneNumberController,
                      keyboardType:TextInputType.number,
                      textInputAction:TextInputAction.next,
                      style:TextStyle(
                          color:ColorConst.eighth,
                          fontSize:width*0.045
                      ),
                      decoration: InputDecoration(
                        constraints:BoxConstraints(
                            maxHeight:width*0.2
                        ),
                        fillColor:ColorConst.eleventh,
                        filled: true,
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.eleventh.withOpacity(0.5)
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.eleventh
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:height*0.015),
              SizedBox(
                width:width*0.88,
                height:height*0.11,
                //color:Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Address",style:GoogleFonts.inter(
                        color: ColorConst.nineth,
                        fontWeight: FontWeight.w500,
                        fontSize:width*0.043
                    ),),
                    TextFormField(
                      controller:addressController,
                      keyboardType:TextInputType.streetAddress,
                      textInputAction:TextInputAction.done,
                      style:TextStyle(
                          color:ColorConst.eighth,
                          fontSize:width*0.045
                      ),
                      decoration: InputDecoration(
                        constraints:BoxConstraints(
                            maxHeight:width*0.2
                        ),
                        fillColor:ColorConst.eleventh,
                        filled: true,
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.eleventh.withOpacity(0.5)
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.eleventh
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:height*0.01,),
              SizedBox(
                width:width*0.85,
                height:height*0.05,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Save as primary address",style:GoogleFonts.inter(
                        color: ColorConst.nineth,
                        fontWeight: FontWeight.w500,
                        fontSize:width*0.04
                    ),),
                    CupertinoSwitch(
                      focusColor:ColorConst.fourtyColor,
                      activeColor:ColorConst.seventeenColor,
                      value: toggle,
                      onChanged: (bool value) {
                        setState(() {
                          toggle = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width:width*08,
                height:height*0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Addressmodel address =Addressmodel(
                            name: nameController.text,
                            country: countryController.text,
                            city: cityController.text,
                            phonenumber: phoneNumberController.text,
                            address: addressController.text);
                        Map <String, dynamic>add={

                          "name":nameController.text.trim(),
                          "country":countryController.text.trim(),
                          "city":cityController.text.trim(),
                          "phonenumber":phoneNumberController.text.trim(),
                          "address":addressController.text.trim(),
                        };
                        addressadd(detail:currentUserModel!,adreess: add);
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Selectaddress(),));
                      },
                      child: Container(
                        height: height*0.07,
                        width: width*0.88,
                        child: Center(
                          child: Text("Save Address",style: TextStyle(
                            fontSize: width*0.04,
                            color: ColorConst.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.07),
                          color: ColorConst.thirdColor,
                        ),
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ) ,
    );
  }
}
