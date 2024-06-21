import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text("Reviews",style: TextStyle(color: ColorConst.secondary,fontSize: width*0.06,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(width*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("245 Reviews",style: TextStyle(fontSize: width*0.04,color: ColorConst.secondary,fontWeight: FontWeight.bold),),
                    Text("4.8 *****",style: TextStyle(fontWeight: FontWeight.bold,color: ColorConst.secondary,fontSize: width*0.03),)
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(SvgConstant.reviewicon),
                      SizedBox(width: width*0.01,),
                      Text("Add Review",style: TextStyle(color: ColorConst.primaryColor,fontWeight: FontWeight.bold,fontSize: width*0.04),)
                    ],
                  ),
                  width: width*0.3,
                  height: height*0.05,
                  decoration: BoxDecoration(
                    color: ColorConst.nineteenthColor,
                    borderRadius: BorderRadius.circular(width*0.02),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
