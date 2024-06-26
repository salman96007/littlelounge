
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../constant/colorconstant.dart';
import '../../../main.dart';

class HomePageView extends ConsumerStatefulWidget {
    const HomePageView({super.key});

    @override
    ConsumerState<HomePageView> createState() => _HomePageViewState();
  }

  class _HomePageViewState extends ConsumerState<HomePageView> {
    var selectIndex =0;
    List pages =[
      Container(
        alignment: Alignment.center,
        child: Text("Live",style: TextStyle(
            fontWeight: FontWeight.w600,fontSize: width*0.1
        ),),
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Live",style: TextStyle(
            fontWeight: FontWeight.w600,fontSize: width*0.1
        ),),
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Video",style: TextStyle(
            fontWeight: FontWeight.w600,fontSize: width*0.1
        ),),
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Video",style: TextStyle(
            fontWeight: FontWeight.w600,fontSize: width*0.1
        ),),
      ),
    ];



    @override
    Widget build(BuildContext context) {


      return Scaffold(
        //backgroundColor:ColorConst.primaryColor,
        body: pages[selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectIndex,
          onTap: (value) {
            selectIndex=value;
            setState(() {

            });
          },

          items: [
            BottomNavigationBarItem(
                activeIcon:Text("Home",style: TextStyle(
                  fontWeight:FontWeight.w500,
                  color:ColorConst.thirdColor
                ),),
                icon:SvgPicture.asset(SvgConstant.home,color:ColorConst.eighth,),

                label: ""
            ),
            BottomNavigationBarItem(
                activeIcon:Text("Wishlist",style: TextStyle(
                    fontWeight:FontWeight.w500,
                    color:ColorConst.thirdColor
                ),),
                icon:SvgPicture.asset(SvgConstant.wishlist,color:ColorConst.eighth,),

                label: ""
            ),
            BottomNavigationBarItem(
                activeIcon:Text("Order",style: TextStyle(
                    fontWeight:FontWeight.w500,
                    color:ColorConst.thirdColor
                ),),
                icon:SvgPicture.asset(SvgConstant.order,color:ColorConst.eighth,),

                label: ""
            ),
            BottomNavigationBarItem(
                activeIcon:Text("My Cards",style: TextStyle(
                    fontWeight:FontWeight.w500,
                    color:ColorConst.thirdColor
                ),),
                icon:SvgPicture.asset(SvgConstant.myCard,color:ColorConst.eighth,),

                label: ""
            ),

          ],

        ),


      );
    }
  }
