import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/features/revviews/screen/addreview.dart';
import 'package:pinput/pinput.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  List a=[
    {
      "img": ImageConstant.jenny,
      "title": "Jenny Wilson",
  },
    {
      "img": ImageConstant.ronald,
      "title": "Ronald Richards",
    },
    {
      "img": ImageConstant.guy,
      "title": "Guy Hawkins",
    },
    {
      "img": ImageConstant.savannah,
      "title": "Savannah Nguyen",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddReview(id:"" ,),));
                  },
                  child: Container(
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
                  ),
                )
              ],
            ),
          ),
         Expanded(
           child: ListView.builder(itemBuilder: (context, index) {
             return Column(
               children: [
                 ListTile(
                   leading: CircleAvatar(
                     backgroundImage: AssetImage(a[index]["img"],),
                   ),
                   title: Text(a[index]["title"]),
                   subtitle: Row(
                     children: [
                       SvgPicture.asset(SvgConstant.clock),
                       Text(" 13 Sep, 2020")
                     ],
                   ),
                   trailing: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text("4.8 rating"),
                       Text("*****"),
                     ],
                   ),
                 ),
                 Text("Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Pellentesque malesuada eget\n vitae amet...")
               ],
             );
           },
             itemCount: a.length,
           ),
         )
        ],
      ),
    );
  }
}
