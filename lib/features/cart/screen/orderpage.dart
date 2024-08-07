import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/colorconstant.dart';
import '../../../constant/imageconstant.dart';
import '../../../main.dart';

class Orderpage extends ConsumerStatefulWidget {
  const Orderpage({super.key});

  @override
  ConsumerState createState() => _OrederpageState();
}

class _OrederpageState extends ConsumerState<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConst.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConst.primaryColor,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right :width*0.05),
              child: Icon(CupertinoIcons.shopping_cart,size:width*0.075,)
          )
        ],
        elevation: 1,
        title: Text("Orders",style: TextStyle(
          fontWeight: FontWeight.w600,
          color: ColorConst.secondary,

        ),),
        centerTitle: true,
      ),
      body:Padding(
        padding:  EdgeInsets.only(top:height*0.02),
        child: ListView(
          children: [
            Center(
              child: Container(
                width:width*0.9,
                child:ListView.separated(
                  itemCount: 5,
                    scrollDirection:Axis.vertical,
                    shrinkWrap:true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder:(context, index) {
                      return Container(
                        height:height*0.18,
                        width:width*0.9,
                        decoration:BoxDecoration(
                          color:ColorConst.sixteenColor,
                          borderRadius:BorderRadius.circular(width*0.03),
                        ),
                        child:Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:width*0.04),
                              width: width*0.25,
                              height: height*0.15,
                              decoration:BoxDecoration(
                                  color:ColorConst.primaryColor,
                                  borderRadius:BorderRadius.circular(width*0.03),
                                  image:DecorationImage(image:AssetImage(ImageConstant.men1),fit:BoxFit.cover)
                              ),
                            ),
                            SizedBox(width:width*0.03,),
                            Padding(
                              padding:  EdgeInsets.only(top:height*0.02),
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  Text("Men's Tie-Dye T-Shirt\nNike Sportswear",style: TextStyle(
                                      color: ColorConst.secondary,
                                      fontWeight: FontWeight.w500,
                                      fontSize: width*0.04
                                  ),),
                                  SizedBox(height:height*0.01),
                                  Row(children: [
                                    Text("Price: ",style:TextStyle(
                                        color: ColorConst.eighth,
                                        fontWeight:FontWeight.w500
                                    ),),
                                    SvgPicture.asset(SvgConstant.rupees,width: width*0.04,color:ColorConst.eighth,),
                                    Text("699",style:TextStyle(
                                        color: ColorConst.eighth,
                                        fontWeight:FontWeight.w500
                                    ),)
                                  ],),
                                  SizedBox(height:height*0.016,),
                                  GestureDetector(
                                    onTap: () {
                                    showDialog(
                                      context: context, builder: (context) {
                                      return AlertDialog(

                                        title:Text("Are you sure log out ?",style:TextStyle(
                                            fontSize:width*0.05
                                        ),),
                                        content:Padding(
                                          padding:  EdgeInsets.only(top:height*0.06),
                                          child: Row(
                                            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height:height*0.045,
                                                  width:width*0.2,
                                                  decoration:BoxDecoration(
                                                    color:ColorConst.thirdColor,
                                                    borderRadius: BorderRadius.circular(width*0.04),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Colors.black.withOpacity(0.13),
                                                          blurRadius: 6,
                                                          spreadRadius: 3,
                                                          offset: Offset(0, 4)
                                                      )
                                                    ],
                                                  ),
                                                  child:Center(child: Text("Yes",style:TextStyle(
                                                      color: ColorConst.primaryColor,
                                                      fontWeight:FontWeight.w500
                                                  ),)),
                                                ),
                                              ),
                                              SizedBox(width:width*0.04,),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height:height*0.045,
                                                  width:width*0.2,
                                                  decoration:BoxDecoration(
                                                    color:ColorConst.primaryColor,
                                                    borderRadius: BorderRadius.circular(width*0.04),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Colors.black.withOpacity(0.13),
                                                          blurRadius: 6,
                                                          spreadRadius: 3,
                                                          offset: Offset(0, 4)
                                                      )
                                                    ],
                                                  ),
                                                  child:Center(child: Text("No",style:TextStyle(
                                                      color: ColorConst.secondary,
                                                      fontWeight:FontWeight.w500
                                                  ))),


                                                ),
                                              )

                                            ],
                                          ),
                                        ),

                                      );
                                    },);
                                  },
                                    child: Container(
                                      height:height*0.04,
                                      width:width*0.3,
                                      decoration:BoxDecoration(
                                          borderRadius:BorderRadius.circular(width*0.04),
                                          border:Border.all(
                                            width:width*0.0025,
                                            color:ColorConst.sixth,
                                          )
                                      ),
                                      child:Center(
                                        child: Text("Cancel order",style:TextStyle(
                                            color:ColorConst.sixth,
                                            fontSize:width*0.035

                                        ),),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height:height*0.02);
                    }, ),

              ),
            )

          ],

        ),
      ),

    );
  }
}
