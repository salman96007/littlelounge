import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';

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
            itemCount:1,
            itemBuilder:(context, index, realIndex) {
              return Container(
                  width: width*0.85,
                  height:height*0.1,
                  margin: EdgeInsets.all(width*0.020),
                  //padding: EdgeInsets.all(width*0.2),
                  decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0,4)
                      )
                    ] ,
                    borderRadius: BorderRadius.circular(width*0.04),
                    image: DecorationImage(image:AssetImage(ImageConstant.card),
                        fit: BoxFit.cover
                    ),
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
                autoPlay: false,
                autoPlayAnimationDuration: Duration(seconds: 2),
                viewportFraction:0.9
            ),
          ),
          SizedBox(height:height*0.02,),
          Container(
            width:width*0.9,
            height:height*0.07,
            decoration:BoxDecoration(
              color:ColorConst.twanteenthColor,
              borderRadius: BorderRadius.circular(width*0.03),
              border: Border.all(
                color:ColorConst.thirdColor,
                width:width*0.002
              )
            ),
            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Icon(Icons.add_box_outlined,color: ColorConst.thirdColor,),
                SizedBox(width:width*0.01),
                Text("Add new card",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize:width*0.045,
                  color:ColorConst.thirdColor
                ),)
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
                Text("Card Owner",style:GoogleFonts.inter(
                    color: ColorConst.nineth,
                    fontWeight: FontWeight.w500,
                    fontSize:width*0.043
                ),),
                TextFormField (
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
                Text("Card Number",style:GoogleFonts.inter(
                    color: ColorConst.nineth,
                    fontWeight: FontWeight.w500,
                    fontSize:width*0.043
                ),),
                TextFormField(
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
                    Text("EXP",style:GoogleFonts.inter(
                        color: ColorConst.nineth,
                        fontWeight: FontWeight.w500,
                        fontSize:width*0.043
                    ),),
                    TextFormField(
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
                    Text("CVV",style:GoogleFonts.inter(
                        color: ColorConst.nineth,
                        fontWeight: FontWeight.w500,
                        fontSize:width*0.043
                    ),),
                    TextFormField(
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

        ],
      ),

    );
  }
}
