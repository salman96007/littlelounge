
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
        body: pages[selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectIndex,
          onTap: (value) {
            selectIndex=value;
            setState(() {

            });
          },

          items: [
            BottomNavigationBarItem(
               icon: SvgPicture.asset(SvgConstant.home),
                label: "djjdj"
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(SvgConstant.home),
                label: ""
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.directions,size: width*0.09,),
                label: ""
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.directions,size: width*0.09,),
                label: ""
            ),

          ],
        ),


      );
    }
  }
