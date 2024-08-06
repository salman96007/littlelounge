import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/features/bottomnavigation/screen/bottomnavigation.dart';
import 'package:littlelounge/features/home/controller/collectioncontroller.dart';
import 'package:littlelounge/features/home/screen/homepage.dart';
import 'package:pinput/pinput.dart';

import '../../../main.dart';
import '../controller/collectioncontroller.dart';

class WelcomPage extends ConsumerStatefulWidget {
  const WelcomPage({super.key});

  @override
  ConsumerState<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends ConsumerState<WelcomPage> {
  String title="";
  List images=[
    ImageConstant.finalimg1,
    ImageConstant.finalimg4,
    ImageConstant.finalimg3,
  ];
  int activeindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CarouselSlider.builder(
                itemCount:images.length ,
                  itemBuilder:(context, index, realIndex) {
                  return Container(
                    height: height*1,
                    width: width*1,
                    child: Image.asset(images[index],fit:BoxFit.cover,),
                  );
                  },
                  options: CarouselOptions(
                      height: height*1,
                      onPageChanged: (index, reason) {
                        activeindex=index;
                        setState(() {
                        });
                      },
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      viewportFraction:1
                  ),),
            ],
          ),
          Container(
            height: height*1,
            width: width*1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.05,0.7],

                  colors: [
                    ColorConst.thirdColor.withOpacity(0.2),
                    ColorConst.thirdColor.withOpacity(0.8),
                  ]
              ),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: height*0.28,
                  width: width*0.86,
                  margin:  EdgeInsets.only(bottom: height*0.05),
                  decoration: BoxDecoration(
                    color: ColorConst.primaryColor,
                    borderRadius: BorderRadius.circular(width*0.04),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.02,),
                      Text("Look Good, Feel Good",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.06
                      ),),
                      Text("Create your individual & unique style and look amazing everyday.",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color:ColorConst.twelthColor,
                      ),textAlign: TextAlign.center,),
                      SizedBox(height: height*0.07,),
                      ref.watch(StreamCollection).when(
                        data: (data) =>    Container(
                          width: width*0.8,
                          height: height*0.07,
                          margin: EdgeInsets.only(left: width*0.05),
                          child: ListView.separated(
                            itemCount:data.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePageView(),));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(data[index].name,style: TextStyle(
                                      color: ColorConst.primaryColor
                                  ),),
                                  height: height*0.03,
                                  width: width*0.35,
                                  decoration: BoxDecoration(
                                      color: ColorConst.thirdColor,
                                      borderRadius: BorderRadius.circular(width*0.02)

                                  ),
                                ),
                              );
                            }, separatorBuilder: (context, index) {
                            return SizedBox(width: width*0.04,);
                          }, ),
                        ) ,
                        error: (error, stackTrace) => Text(error.toString()),
                        loading: () => CircularProgressIndicator(),)


                    ],
                  ),
                )
              ],
            ) ,

          ),
        ]


      ),

    );
  }
}
