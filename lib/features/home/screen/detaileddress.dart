
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
    ];
    String selectedSize = '';
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomSheet: Row(
          children: [
          Container(
            height:height*0.07,
            width:width*0.5,
            color:ColorConst.primaryColor,
            child:Center(child: Text("Add to cart",style:TextStyle(
              fontWeight: FontWeight.w600,
              color:ColorConst.secondary,
              fontSize:width*0.04
            ),)),
          ),
            Container(
              height:height*0.07,
              width:width*0.5,
              color:ColorConst.thirdColor,
              child:Center(child: Text("Buy now",style:TextStyle(
                  fontWeight: FontWeight.w600,
                  color:ColorConst.primaryColor,
                  fontSize:width*0.04
              ),)),
            )
          ],
        ),

        body: ListView(
          children: [
            Stack(
              children:[ Container(
                  child: Image.asset(ImageConstant.image1),
                  width: width*1,
                  height: height*0.45,
                  decoration: BoxDecoration(
                      image:DecorationImage(image:AssetImage(ImageConstant.bg),fit:BoxFit.cover)
                  )
              ),
                Positioned(
                  top:height*0.015,
                    left:width*0.04,
                    child: CircleAvatar(
                  radius:width*0.066,
                  backgroundColor:Colors.white,
                      child:Icon(Icons.arrow_back),
                )),
                Positioned(
                    top:height*0.015,
                    right:width*0.04,
                    child: CircleAvatar(
                      radius:width*0.066,
                      backgroundColor:Colors.white,
                      child:SvgPicture.asset(SvgConstant.order),
                    ))
      ]
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
                  SizedBox(height: height*0.005),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nike Club Fleece",style: TextStyle(
                          color: ColorConst.secondary,
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.06
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
                  SizedBox(height: height*0.01,),
                  Container(
                    height: height*0.11,
                    child: ListView.separated(itemBuilder: (context, index) {
                      return Container(
                        width: width*0.22,
                        decoration: BoxDecoration(
                            image:DecorationImage(image:AssetImage(ImageConstant.bg),fit:BoxFit.cover),
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
                  SizedBox(height: height*0.01,),
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
                  SizedBox(height: height*0.01,),
                  Container(
                    height: height*0.06,
                    child: ListView.separated(itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          selectedSize = Size[index];
                          setState(() {});
                          },
                        child: Container(

                            alignment: Alignment.center,
                            width: height*0.06,
                            decoration: BoxDecoration(
                                color: selectedSize== Size[index]? ColorConst.seventh:ColorConst.sixth,
                                borderRadius: BorderRadius.circular(width*0.03)
                            ),
                            child: Text(Size[index],style: TextStyle(
                                color:selectedSize== Size[index]? ColorConst.primaryColor:ColorConst.secondary,
                                fontWeight: FontWeight.w600,
                                fontSize: width*0.05
                            ),)
                        ),
                      );
                    },
                      shrinkWrap: true,
                      itemCount: 3,
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
