import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/features/cart/screen/checkoutpage.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';

class Selectaddress extends ConsumerStatefulWidget {
  const Selectaddress({super.key});

  @override
  ConsumerState createState() => _SelectaddressState();
}

class _SelectaddressState extends ConsumerState<Selectaddress> {
  String radio="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.primaryColor,
        elevation: 1,
        title:  Text("Address",style: GoogleFonts.inter(
            fontWeight:FontWeight.w600,
            color: ColorConst.secondary
        ),),
      ),
      bottomSheet:InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>CheckoutPage(),));
        },
        child: Container(
          height:height*0.07,
          width:width*1,
          color:ColorConst.thirdColor,
          child:Center(
            child: Text("Deliver here",style:TextStyle(
              color:ColorConst.primaryColor,
              fontWeight:FontWeight.w600,
              fontSize:width*0.055
            ),),
          ),
        ),
      ),
      body:Column(
        children: [
          Container(
            height:height*0.07,
            width:width*1,
            decoration:BoxDecoration(
              color:ColorConst.primaryColor,
              boxShadow: [
                BoxShadow(
                    color: ColorConst.secondary.withOpacity(0.13),
                    blurRadius: 7,
                    spreadRadius: 3,
                    offset: Offset(0, 4)
                )
              ],
            ),
            child:Row(
              children: [
               Padding(
                 padding: EdgeInsets.only(left:width*0.04),
                 child: Icon(CupertinoIcons.add,size:width*0.05 ,color:ColorConst.secondary,),
               ),
                SizedBox(width:width*0.02),
                Text("Add a new address",style:TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.045

                ),),

              ],
            ),
          ),
       ListView.separated(
         itemCount: 4,
           scrollDirection: Axis.vertical,
           physics: BouncingScrollPhysics(),
           shrinkWrap: true,
           itemBuilder: (context, index) {
             return  Container(
               height:height*0.16,
               width:width*1,
               decoration:BoxDecoration(
                   border:Border.all(
                       color: ColorConst.twentyColor,
                       width:width*0.002
                   )
               ),
               child:Row(
                 crossAxisAlignment:CrossAxisAlignment.start,
                 children: [
                   Radio(
                     value: radio,
                     groupValue: radio,
                     onChanged: (value) {
                       radio=value!;
                       print(value);
                       print("kkkkkkkkkkkkkkkkkkkkkkkk");
                       setState(() {

                       });
                     },),
                   SizedBox(width:width*0.03,),
                   Column(
                     crossAxisAlignment:CrossAxisAlignment.start,
                     mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                     children: [
                       Text("Jibin thomas",style:TextStyle(
                           fontWeight:FontWeight.w500,
                           fontSize:width*0.045
                       ),),
                       Container(
                         height:height*0.09,
                         width:width*0.7,
                         //color:Colors.black,
                         child:   Text("",style:TextStyle(
                           fontWeight:FontWeight.w400,
                           fontSize:width*0.04,
                         ),textAlign:TextAlign.center,),

                       ),
                       Text("9999999999",style:TextStyle(
                           fontWeight:FontWeight.w400,
                           fontSize:width*0.04
                       ),),
                     ],
                   ),
                   Icon(Icons.edit_outlined),
                 ],
               ),
             );
           },
           separatorBuilder:(context, index) {
             return SizedBox();
           },
           )
        ],
      ),


    );
  }
}
