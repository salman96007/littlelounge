
  import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/colorconstant.dart';
import '../../../constant/imageconstant.dart';
import '../../../main.dart';

class DetailedDress extends ConsumerStatefulWidget {
    const DetailedDress({super.key});

    @override
    ConsumerState<DetailedDress> createState() => _DetailedDressState();
  }

  class _DetailedDressState extends ConsumerState<DetailedDress> {
    List Size =[
        "S",
        "M",
        "L",
        "XL",
        "2XL",
    ];

    String selectedSize = '';

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
        body: ListView(
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
              padding:  EdgeInsets.all(width*0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  SizedBox(height: height*0.02,),
                  Row(
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
                  SizedBox(height: height*0.02,),
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
                  SizedBox(height: height*0.02,),
                  Row(
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
                  SizedBox(height: height*0.02,),
                  Container(
                    height: height*0.09,
                    child: ListView.separated(itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          selectedSize = Size[index];
                          setState(() {

                          });
                        },
                        child: Container(
                            alignment: Alignment.center,
                            width: width*0.155,
                            decoration: BoxDecoration(
                                color: selectedSize== Size[index]? ColorConst.thirdColor:ColorConst.forth.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(width*0.03)
                            ),
                            child: Text(Size[index],style: TextStyle(
                                color: ColorConst.secondary,
                                fontWeight: FontWeight.w600,
                                fontSize: width*0.06
                            ),)
                        ),
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
                  SizedBox(height: height*0.02,),
                  Text("Description",style: TextStyle(
                      color: ColorConst.secondary,
                      fontSize: width*0.05,
                      fontWeight: FontWeight.w600
                  ),),
                  SizedBox(height: height*0.02,),
                  RichText(text: TextSpan(
                     text: "The Nike Throwback Pullover Hoodie is made\nfrom premium French terry fabric that blends a performance feel with",style: TextStyle(
                     color: ColorConst.twelthColor,
                     fontWeight: FontWeight.w400
                   ),children: [
                     TextSpan(text: " Read More..",style: TextStyle(
                       color: ColorConst.secondary,
                       fontWeight: FontWeight.w600,
                       fontSize: width*0.045
                     ))
                   ]
                   ),textAlign: TextAlign.start,),
                  SizedBox(height: height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Reviews",style: TextStyle(
                        color: ColorConst.secondary,
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.05
                      ),),
                      Text("View All",style: TextStyle(
                        color: ColorConst.twelthColor,
                        fontWeight: FontWeight.w400,
                        fontSize: width*0.045
                      ),),
                    ],
                  )
                ],
              ),
            ),






          ],
        ),
      );
    }
  }
