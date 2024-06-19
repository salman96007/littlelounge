  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/colorconstant.dart';
import '../../../constant/imageconstant.dart';
import '../../../main.dart';

class WishListPage extends StatefulWidget {
    const WishListPage({super.key});

    @override
    State<WishListPage> createState() => _WishListPageState();
  }

  class _WishListPageState extends State<WishListPage> {
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
         title: Text("Wishlist",style: TextStyle(
           fontWeight: FontWeight.w600,
           color: ColorConst.secondary,

         ),),
         centerTitle: true,
      ),
        body: Padding(
          padding:  EdgeInsets.only(right: width*0.05,left: width*0.05,top: width*0.09),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(text: "365 Items\n",style: TextStyle(
                    color: ColorConst.secondary,
                    fontWeight: FontWeight.w500,
                    fontSize: width*0.07,
                  ),children: [
                     TextSpan(text: "in wishlist",style:TextStyle(
                       color: ColorConst.twelthColor,
                       fontSize: width*0.06,
                       fontWeight: FontWeight.w400
                     ))
                  ])),
                  Row(
                    children: [
                     SvgPicture.asset(SvgConstant.edit,width: width*0.07,),
                      Text("Edit",style: TextStyle(
                        color: ColorConst.secondary,
                        fontWeight: FontWeight.w500,
                        fontSize: width*0.06
                      ),)
                    ],
                  )

                ],
              ),
              SizedBox(height: height*0.07,),
              GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    childAspectRatio: 0.5,
                    crossAxisSpacing:width*0.04,
                    mainAxisSpacing: width*0.01
                ),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                              child: Image.asset(ImageConstant.image1),
                              width: width*0.425,
                              decoration: BoxDecoration(
                                  color: ColorConst.forth.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(width*0.05),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius:4,
                                        spreadRadius: 2,
                                        offset: Offset(0, 3)

                                    )
                                  ]
                              )
                          ),
                          Positioned(
                              right: width*0.05,
                              top: width*0.04,

                              child: SvgPicture.asset(SvgConstant.heart,width: width*0.07,))
                        ],
                      ),
                      SizedBox(height: height*0.02,),
                      Text("the valuable clothing collectiin",style: TextStyle(
                          color: ColorConst.secondary,
                          fontWeight: FontWeight.w500,
                          fontSize: width*0.04
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
                  );



                },
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
              )

            ],
          ),

        ),

      );
    }
  }
