
  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/colorconstant.dart';
import '../../../constant/imageconstant.dart';
import '../../../main.dart';

class DetailedDress extends StatefulWidget {
    const DetailedDress({super.key});

    @override
    State<DetailedDress> createState() => _DetailedDressState();
  }

  class _DetailedDressState extends State<DetailedDress> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConst.primaryColor,
          actions: [
            Padding(
              padding:  EdgeInsets.only(right :width*0.05),
              child: SvgPicture.asset(SvgConstant.lock1),
            )
          ],
          elevation: 1, 
        ),
        body: Column(
          children: [
            Container(
                child: Image.asset(ImageConstant.image1),
                width: width*1,
                height: height*0.45,
                decoration: BoxDecoration(
                    color: ColorConst.forth.withOpacity(0.15),
                )
            ),
            Padding(
              padding:  EdgeInsets.only(top: width*0.05,left: width*0.05,right: width*0.05,bottom: width*0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Men's Printed Pullover Hoodie",style: TextStyle(
                    color: ColorConst.twelthColor,
                    fontWeight: FontWeight.w400,
                    fontSize: width*0.04
                  ),),
                  Text("Price",style: TextStyle(
                    color: ColorConst.twelthColor,
                    fontWeight: FontWeight.w400,
                    fontSize: width*0.04
                  ),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right:width*0.05,left: width*0.05,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nike Club Fleece",style: TextStyle(
                    color: ColorConst.secondary,
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.07
                  ),),
                  Row(
                    children: [
                      SvgPicture.asset(SvgConstant.rupees,width: width*0.05,),
                      Text("500",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.05
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: height*0.12,
              child: ListView.separated(itemBuilder: (context, index) {
                return Container(
                    width: width*0.2,
                  decoration: BoxDecoration(
                    color: ColorConst.forth.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(width*0.03)
                  ),
                  child: Image.asset(ImageConstant.image1,fit: BoxFit.cover,),
                  );
              },
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal, separatorBuilder: (
                    BuildContext context, int index) {
                return SizedBox(
                   width: width*0.03,
                );
                },
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: width*0.03,left: width*0.05,right: width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Size",style: TextStyle(
                    color: ColorConst.secondary,
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.05
                  ),),
                  Text("Size Guide",style: TextStyle(
                    color: ColorConst.twelthColor,
                    fontWeight: FontWeight.w400,
                    fontSize: width*0.05
                  ),),
                ],
              ),

            ),
            Container(
              height: height*0.09,
              child: ListView.separated(itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  width: width*0.155,
                  decoration: BoxDecoration(
                      color: ColorConst.forth.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(width*0.03)
                  ),
                  child: Text("S",style: TextStyle(
                    color: ColorConst.secondary,
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.06
                  ),)
                );
              },
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal, separatorBuilder: (
                    BuildContext context, int index) {
                  return SizedBox(
                    width: width*0.03,
                  );
                },
              ),
            ),


          ],
        ),
      );
    }
  }
