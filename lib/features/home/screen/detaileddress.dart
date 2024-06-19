
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
            Row(
              children: [
                Text("Men's Printed Pullover Hoodie",style: TextStyle(
                  color: ColorConst.twelthColor
                ),)
              ],
            )


          ],
        ),
      );
    }
  }
