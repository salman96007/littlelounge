import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:littlelounge/model/productmodel.dart';
import 'package:littlelounge/model/usermodel.dart';

import '../../../constant/colorconstant.dart';
import '../../../constant/imageconstant.dart';
import '../../../main.dart';
import '../../auth/controller/authcontroller.dart';
import '../../home/controller/collectioncontroller.dart';
import 'cartpage.dart';

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
              child: InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>CartPage(data: ,),));

                  },
                  child: Icon(CupertinoIcons.shopping_cart,size:width*0.075,))
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
                child:ref.watch(userStreamProvider).when(
                    data: (data) =>ListView.separated(
                      itemCount:data.order.length,
                      scrollDirection:Axis.vertical,
                      shrinkWrap:true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder:(context, index) {
                        return Container(
                          height:height*0.2,
                          width:width*0.8,
                          decoration:BoxDecoration(
                            color:ColorConst.sixteenColor,
                            borderRadius:BorderRadius.circular(width*0.03),
                          ),
                          child:Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left:width*0.04),
                                width: width*0.25,
                                height: height*0.165,
                                decoration:BoxDecoration(
                                    color:ColorConst.primaryColor,
                                    borderRadius:BorderRadius.circular(width*0.03),
                                    image:DecorationImage(image:NetworkImage(data.order[index]["image"]))
                                ),
                              ),
                              SizedBox(width:width*0.03,),
                              Padding(
                                padding:  EdgeInsets.only(top:height*0.02),
                                child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(data.order[index]["name"],style: TextStyle(
                                            color: ColorConst.secondary,
                                            fontWeight: FontWeight.w500,
                                            fontSize: width*0.045
                                        ),),
                                        Padding(
                                          padding:  EdgeInsets.only(left:width*0.43,),
                                          child: Icon(Icons.arrow_forward_ios,size:width*0.046,color:ColorConst.secondary.withOpacity(0.6),),
                                        )
                                      ],
                                    ),
                                    SizedBox(height:height*0.01),
                                    Row(
                                      children: [
                                      Text("Size: ",style:TextStyle(
                                          color: ColorConst.eighth,
                                          fontWeight:FontWeight.w500
                                      ),),
                                      Text(data.order[index]["size"],style:TextStyle(
                                          color: ColorConst.eighth,
                                          fontWeight:FontWeight.w500
                                      ),)
                                    ],),
                                    SizedBox(height:height*0.01),
                                    Row(children: [
                                      Text("Price: ",style:TextStyle(
                                          color: ColorConst.eighth,
                                          fontWeight:FontWeight.w500
                                      ),),
                                      Text("₹${data.order[index]["price"]}",style:TextStyle(
                                          color: ColorConst.secondary,
                                          fontWeight:FontWeight.w600
                                      ),)
                                    ],),
                                    SizedBox(height:height*0.02,),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context, builder: (context) {
                                          return AlertDialog(

                                            title:Text("Are you sure Cancel ?",style:TextStyle(
                                                fontSize:width*0.05
                                            ),),
                                            content:Padding(
                                              padding:  EdgeInsets.only(top:height*0.06),
                                              child: Row(
                                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
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
                                        width:width*0.25,
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
                                              fontSize:width*0.03,
                                            fontWeight:FontWeight.w600

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
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => CircularProgressIndicator(),)
                

              ),
            )

          ],

        ),
      ),

    );
  }
}
