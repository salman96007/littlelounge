import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/main.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  bool a=false;
  bool b=false;
  bool c=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:ColorConst.primaryColor,
      appBar: AppBar(
        backgroundColor:ColorConst.primaryColor,
        centerTitle: true,
        title:Text("Add New Card",style: TextStyle(
            fontWeight:FontWeight.w600,
            color: ColorConst.secondary
        ),) ,
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top:height*0.02),
            child: SizedBox(
              width:width*0.95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap:(){
                      a=true;
                      b=false;
                      c=false;
                      setState(() {

                      });

                    },
                    child: Container(
                      height: height*0.07,
                      width: width*0.27,
                      child: Image.asset(ImageConstant.card),
                      decoration: BoxDecoration(
                          color:a==false?ColorConst.eleventh:ColorConst.twentyTwoColor,
                        border:Border.all(
                          width:width*0.003,
                          color:a==false?ColorConst.eleventh:ColorConst.twentyThreeColor
                        ),
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: () {
                      a=false;
                      b=true;
                      c=false;
                      setState(() {

                      });
                    },

                    child: Container(
                      height: height*0.075,
                      width: width*0.27,
                      child: Image.asset(ImageConstant.paypal),
                      decoration: BoxDecoration(
                          color:b==false?ColorConst.eleventh:ColorConst.twentyTwoColor,
                          border:Border.all(
                              width:width*0.003,
                              color:b==false?ColorConst.eleventh:ColorConst.twentyThreeColor
                          ),
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),

                    ),
                  ),
                  InkWell(
                    onTap:() {
                      a=false;
                      b=false;
                      c=true;
                      setState(() {

                      });
                    },

                    child: Container(
                      height: height*0.07,
                      width: width*0.27,
                      child: Image.asset(ImageConstant.bank),
                      decoration: BoxDecoration(
                          color: c==false?ColorConst.eleventh:ColorConst.twentyTwoColor,
                          border:Border.all(
                              width:width*0.003,
                              color:c==false?ColorConst.eleventh:ColorConst.twentyThreeColor
                          ),
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
        SizedBox(height:height*0.04),
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
                    fontSize:width*0.04
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
                        maxHeight:width*0.15
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
                    fontSize:width*0.04
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
                        maxHeight:width*0.15
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
                        fontSize:width*0.04
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
                            maxHeight:width*0.15
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
                        fontSize:width*0.04
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
                            maxHeight:width*0.15
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
          SizedBox(
            width:width*07,
            height:height*0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
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
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
