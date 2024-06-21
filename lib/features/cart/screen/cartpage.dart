import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../main.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
         Container(
            width: width*1,
            height: height*0.33,
           child: ListView.separated(
               itemBuilder: (context, index) {
                 return
                   Container(
                       margin: EdgeInsets.only(right: width*0.05,left: width*0.05,top: width*0.1),
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
                                         child: SvgPicture.asset(SvgConstant.down,fit: BoxFit.none,)),
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
            padding:  EdgeInsets.only(left: width*0.05,bottom: width*0.05,right: width*0.05),
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
          ListTile(
            leading: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(ImageConstant.locations),
                Image.asset(ImageConstant.ellips),
                Image.asset(ImageConstant.location),

              ],
            ),
            title: Text("43, Electronics City Phase 1,\n Electronic City",style: TextStyle(
              fontSize: width*0.04,
              color: ColorConst.twelthColor
            ),),
            trailing: SvgPicture.asset(SvgConstant.check),
          ),
          Padding(
            padding:  EdgeInsets.only(left: width*0.05,bottom: width*0.05,right: width*0.05),
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
              width: width*0.05,
            ),
            title: Text("43, Electronics City Phase 1,\n Electronic City",style: TextStyle(
                fontSize: width*0.04,
                color: ColorConst.twelthColor
            ),),
            trailing: SvgPicture.asset(SvgConstant.check),
          ),


        ],
      ),
    );
  }
}
