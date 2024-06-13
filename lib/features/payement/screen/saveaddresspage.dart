import 'dart:ui';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                height:height*0.12,
                //color:Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Name",style:GoogleFonts.inter(
                      color: ColorConst.nineth,
                      fontWeight: FontWeight.w500,
                      fontSize:width*0.05
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
                        fillColor:ColorConst.twelthColor.withOpacity(0.2),
                        filled: true,
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                              color:ColorConst.twelthColor.withOpacity(0.1),
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:ColorConst.twelthColor.withOpacity(0.1),
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height:height*0.02,
              ),
              Container(
                width:width*0.85,
                height:height*0.12,
                color: Colors.red,
              )

            ],
          ),
        ),
      ) ,
    );
  }
}
