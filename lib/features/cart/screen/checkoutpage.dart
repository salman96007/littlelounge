import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/features/payement/screen/saveaddresspage.dart';
import 'package:littlelounge/features/payement/screen/selectaddress.dart';
import 'package:littlelounge/model/productmodel.dart';

import '../../../main.dart';

class CheckoutPage extends ConsumerStatefulWidget {
  final String data;
  final ProductModel details;

  const CheckoutPage({super.key,
    required this.data,
    required this.details
  });

  @override
  ConsumerState<CheckoutPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CheckoutPage> {
  int count = 1;
  add(){
    count++;
    setState(() {

    });
  }
  substract(){
    count>1?count--:count;
    setState(() {

    });
  }

     total(){
      double Sum = 0;
      Sum+=widget.details.prize*count;
      print(Sum);

     }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.primaryColor,
      appBar: AppBar(
        title: Text("CheckOut",style: TextStyle(
          color: ColorConst.secondary,
          fontWeight: FontWeight.w600,
          fontSize: width*0.05,
        ),),
        elevation: 1,
        backgroundColor: ColorConst.primaryColor,
        centerTitle: true,
      ),
      body: Column (
        children: [
          Column(
            children: [
              Container(
                width: width*1,
                height: height*0.33,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return
                        Container(
                            margin: EdgeInsets.only(right: width*0.05,left: width*0.05,top: width*0.07),
                            width: width*0.9,
                            height: height*0.25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.03),
                                color: ColorConst.primaryColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorConst.forth.withOpacity(0.2),
                                      blurRadius: 4,
                                      spreadRadius:2,
                                      offset: Offset(0,4)
                                  )
                                ]
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left:width*0.05),
                                  width: width*0.28,
                                  height: height*0.20,
                                  child: Image.network(widget.details.image,fit: BoxFit.fill,),
                                  decoration: BoxDecoration(
                                      color: ColorConst.forth.withOpacity(0.25),
                                      borderRadius: BorderRadius.circular(width*0.03),
                                      boxShadow: [
                                        BoxShadow(
                                            color: ColorConst.secondary.withOpacity(0.15),
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                            offset: Offset(0, 4)

                                        )
                                      ]


                                  ),


                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: width*0.05,left: width*0.05),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(widget.details.name,style: TextStyle(
                                          color: ColorConst.secondary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: width*0.04
                                      ),),
                                      Row(
                                        children: [
                                          SvgPicture.asset(SvgConstant.rupees,width: width*0.04

                                            ,),
                                          Text(widget.details.prize.toString()),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              substract();
                                            },
                                            child: Container(
                                                width: width*0.07,
                                                height: height*0.07,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: ColorConst.twentyColor
                                                    )


                                                ),
                                                child: SvgPicture.asset(SvgConstant.down,fit: BoxFit.none,)),
                                          ),
                                          SizedBox(width: width*0.04,),
                                          Text(count.toString(),style: TextStyle(
                                              color: ColorConst.secondary,
                                              fontWeight: FontWeight.w600,
                                              fontSize: width*0.05

                                          ),),
                                          SizedBox(width: width*0.04,),
                                          GestureDetector(
                                            onTap:  () {
                                              add();
                                            },
                                            child: Container(
                                                width: width*0.07,
                                                height: height*0.07,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: ColorConst.twentyColor
                                                    )


                                                ),
                                                child: SvgPicture.asset(SvgConstant.up,fit: BoxFit.none,)),
                                          ),
                                          SizedBox(width: width*0.13,),
                                          Container(
                                            // margin: EdgeInsets.only(top: width*0.34),
                                              width: width*0.07,
                                              height: height*0.07,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: ColorConst.twentyColor
                                                  )


                                              ),
                                              child: SvgPicture.asset(SvgConstant.delete,fit: BoxFit.none,)),

                                        ],),
                                    ],
                                  ),

                                ),
                              ],
                            )

                        );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: width*0.01,
                      );
                    },
                    itemCount: 1),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.05,bottom: width*0.02,right: width*0.05,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery Address",style: TextStyle(
                        color: ColorConst.secondary,
                        fontWeight: FontWeight.w500,
                        fontSize: width*0.06
                    ),),
                    SvgPicture.asset(SvgConstant.forward)

                  ],
                ),
              ),
              GestureDetector(
                onTap:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Selectaddress(),));
                },
                child: ListTile(
                  leading: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(ImageConstant.locations),
                      Image.asset(ImageConstant.ellips),
                      Image.asset(ImageConstant.location),

                    ],
                  ),
                  title: Text(widget.data,style: TextStyle(
                      fontSize: width*0.04,
                      color: ColorConst.twelthColor,
                      fontWeight: FontWeight.w400
                  ),),
                  trailing: SvgPicture.asset(SvgConstant.check),
                ),
              ),
              SizedBox(height:height*0.01,),
              Padding(
                padding:  EdgeInsets.only(left: width*0.05,bottom: width*0.02,right: width*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment Method",style: TextStyle(
                        color: ColorConst.secondary,
                        fontWeight: FontWeight.w500,
                        fontSize: width*0.06
                    ),),
                    SvgPicture.asset(SvgConstant.forward)

                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  width: width*0.15,
                  height: height*0.15,
                  child: SvgPicture.asset(SvgConstant.visa,fit: BoxFit.none,),
                  decoration: BoxDecoration(
                      color: ColorConst.forth.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(width*0.02)
                  ),
                ),
                title: Text("Visa Classic",style: TextStyle(
                    fontSize: width*0.05,
                    color: ColorConst.secondary,
                    fontWeight: FontWeight.w400
                ),),
                subtitle: Text("** 7690",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorConst.twelthColor,

                ),),
                trailing: SvgPicture.asset(SvgConstant.check),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(width*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Order Info",style: TextStyle(
                    color: ColorConst.secondary,
                    fontWeight: FontWeight.w500,
                    fontSize: width*0.055
                ),),
                SizedBox(height: height*0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width*0.045,
                        color: ColorConst.twelthColor
                    ),),

                    Row(
                      children: [
                        SvgPicture.asset(SvgConstant.rupees,width: width*0.04,),

                        Text("${total()}",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorConst.secondary,
                            fontSize: width*0.04
                        ),)
                      ],
                    )

                  ],
                ),
                SizedBox(height: height*0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery Charge",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width*0.045,
                        color: ColorConst.twelthColor
                    ),),
                    Row(
                      children: [
                        SvgPicture.asset(SvgConstant.rupees,width: width*0.04,),
                        Text("10",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorConst.secondary,
                            fontSize: width*0.04
                        ),)
                      ],
                    )

                  ],
                ),
                SizedBox(height: height*0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width*0.045,
                        color: ColorConst.twelthColor
                    ),),
                    Row(
                      children: [
                        SvgPicture.asset(SvgConstant.rupees,width: width*0.04,),
                        Text("140",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorConst.secondary,
                            fontSize: width*0.04
                        ),)
                      ],
                    )

                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: width*0.75,
            height: height*0.065,
            child: Text("Checkout",style: TextStyle(
                color: ColorConst.primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: width*0.05
            ),),
            decoration: BoxDecoration(
              color: ColorConst.thirdColor,
              borderRadius: BorderRadius.circular(width*0.03),
            ),
          )
        ],
      ),
    );
  }
}