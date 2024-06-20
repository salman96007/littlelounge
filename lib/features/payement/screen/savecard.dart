import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';

import '../../../main.dart';

class Savecard extends StatefulWidget {
  const Savecard({super.key});

  @override
  State<Savecard> createState() => _SavecardState();
}

class _SavecardState extends State<Savecard> {
  int active=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConst.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConst.primaryColor,
        title: Text("Payment",style: GoogleFonts.inter(
            fontWeight:FontWeight.w600,
            color: ColorConst.secondary
        ),),
        centerTitle: true,
      ),
      body:Column(
        children: [
          CarouselSlider.builder(
            itemCount:3,
            itemBuilder:(context, index, realIndex) {
              return Container(
                  width: width*0.85,
                  height:width*0.1,
                  margin: EdgeInsets.all(width*0.020),
                  //padding: EdgeInsets.all(width*0.2),
                  decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 3,
                          spreadRadius: 2,
                          offset: Offset(0,4)
                      )
                    ] ,
                    borderRadius: BorderRadius.circular(width*0.04),
                    // image: DecorationImage(image:NetworkImage(),
                    //     fit: BoxFit.cover
                    // ),
                  )
              );
            },
            options: CarouselOptions(
                height: width*0.55,
                onPageChanged: (index, reason) {
                  active=index;
                  setState(() {
                  });
                },
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 2),
                viewportFraction:0.9
            ),
          ),

        ],
      ),

    );
  }
}
