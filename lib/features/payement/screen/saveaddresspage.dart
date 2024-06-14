import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';

import '../../../main.dart';

class Saveaddresspage extends StatefulWidget {
  const Saveaddresspage({super.key});

  @override
  State<Saveaddresspage> createState() => _SaveaddresspageState();
}

class _SaveaddresspageState extends State<Saveaddresspage> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConst.primaryColor,
        title: Text("Address",style: GoogleFonts.inter(
          fontWeight:FontWeight.w600,
          color: ColorConst.secondary
        ),),
        centerTitle: true,
      ),
      body:Padding(
        padding:EdgeInsets.only(bottom:height*0.01,),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width:width*0.85,
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
                    TextFormField(
                      keyboardType:TextInputType.name,
                      textInputAction:TextInputAction.next,
                      style:TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize:width*0.04,
                         ),
                      decoration: InputDecoration(
                        constraints:BoxConstraints(
                            maxHeight:width*0.2
                        ),
                        fillColor:ColorConst.sixteenColor,
                        filled: true,
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                              color:ColorConst.sixteenColor.withOpacity(0.5)
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:ColorConst.sixteenColor
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:height*0.02,),
              Row(
                crossAxisAlignment:CrossAxisAlignment.start,
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width:width*0.4,
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
                          keyboardType:TextInputType.text,
                          textInputAction:TextInputAction.next,
                          style:TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize:width*0.04,
                          ),
                          decoration: InputDecoration(
                            constraints:BoxConstraints(
                                maxHeight:width*0.2
                            ),
                            fillColor:ColorConst.sixteenColor,
                            filled: true,
                            enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:ColorConst.sixteenColor.withOpacity(0.5)
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:ColorConst.sixteenColor
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:width*0.4,
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
                          keyboardType:TextInputType.text,
                          textInputAction:TextInputAction.next,
                          style:TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize:width*0.04,
                          ),
                          decoration: InputDecoration(
                            constraints:BoxConstraints(
                                maxHeight:width*0.2
                            ),
                            fillColor:ColorConst.sixteenColor,
                            filled: true,
                            enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:ColorConst.sixteenColor.withOpacity(0.5)
                                ),
                                borderRadius:BorderRadius.circular(width*0.03)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:ColorConst.sixteenColor
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
              SizedBox(height:height*0.02),
              SizedBox(
                width:width*0.85,
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
                      keyboardType:TextInputType.number,
                      textInputAction:TextInputAction.next,
                      style:TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize:width*0.04,
                      ),
                      decoration: InputDecoration(
                        constraints:BoxConstraints(
                            maxHeight:width*0.2
                        ),
                        fillColor:ColorConst.sixteenColor,
                        filled: true,
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.sixteenColor.withOpacity(0.5)
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.sixteenColor
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:height*0.02,),
              SizedBox(
                width:width*0.85,
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
                      keyboardType:TextInputType.emailAddress,
                      textInputAction:TextInputAction.done,
                      style:TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize:width*0.04,
                      ),
                      decoration: InputDecoration(
                        constraints:BoxConstraints(
                            maxHeight:width*0.2
                        ),
                        fillColor:ColorConst.sixteenColor,
                        filled: true,
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.sixteenColor.withOpacity(0.5)
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.sixteenColor
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:height*0.01,),
              Container(
                width:width*0.85,
                height:height*0.05,
                color: Colors.red,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Save as primary address",style:GoogleFonts.inter(
                        color: ColorConst.nineth,
                        fontWeight: FontWeight.w500,
                        fontSize:width*0.04
                    ),),
                    CupertinoSwitch(
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
              )

            ],
          ),
        ),
      ) ,
    );
  }
}
