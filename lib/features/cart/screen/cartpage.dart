import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../constant/colorconstant.dart';
import '../../../constant/imageconstant.dart';
import '../../../main.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});

  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.primaryColor,
      appBar: AppBar(
        title: Text("Cart",style: TextStyle(
          color: ColorConst.secondary,
          fontWeight: FontWeight.w600,
          fontSize: width*0.05,
        ),),
        elevation: 1,
        backgroundColor: ColorConst.primaryColor,
        centerTitle: true,
      ),
      body: Column(
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
                                 child: Image.asset(ImageConstant.image1,fit: BoxFit.fill,),
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
                                     Text("Men's Tie-Dye T-Shirt\nNike Sportswear",style: TextStyle(
                                         color: ColorConst.secondary,
                                         fontWeight: FontWeight.w500,
                                         fontSize: width*0.04
                                     ),),
                                     Row(
                                       children: [
                                         SvgPicture.asset(SvgConstant.rupees,width: width*0.04

                                           ,),
                                         Text("500"),
                                       ],
                                     ),
                                     Row(
                                       children: [
                                         Container(
                                             width: width*0.07,
                                             height: height*0.07,
                                             decoration: BoxDecoration(
                                                 shape: BoxShape.circle,
                                                 border: Border.all(
                                                     color: ColorConst.twentyColor
                                                 )


                                             ),
                                             child: SvgPicture.asset(SvgConstant.down,fit: BoxFit.none,)),
                                         SizedBox(width: width*0.04,),
                                         Text("1",style: TextStyle(
                                             color: ColorConst.secondary,
                                             fontWeight: FontWeight.w600,
                                             fontSize: width*0.05

                                         ),),
                                         SizedBox(width: width*0.04,),
                                         Container(
                                             width: width*0.07,
                                             height: height*0.07,
                                             decoration: BoxDecoration(
                                                 shape: BoxShape.circle,
                                                 border: Border.all(
                                                     color: ColorConst.twentyColor
                                                 )


                                             ),
                                             child: SvgPicture.asset(SvgConstant.up,fit: BoxFit.none,)),
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
           ],
         ),
          Padding(
            padding: EdgeInsets.all(width*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Price Details",style: TextStyle(
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
                        Text("120",style: TextStyle(
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
