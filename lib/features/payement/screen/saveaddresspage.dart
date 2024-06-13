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
              Container(
                width:width*0.85,
                height:height*0.1,
                color:Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("")
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
