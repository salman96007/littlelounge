  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/main.dart';

import '../../../constant/colorconstant.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
  bool toggle =false;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: ColorConst.primaryColor,
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
        drawer: Drawer(
          shape: BeveledRectangleBorder(side: BorderSide(color: ColorConst.primaryColor)),
          backgroundColor: ColorConst.primaryColor,
      child: ListView(
        children:  [
          SizedBox(height: height*0.05,),
         ListTile(
           leading: Image.asset(ImageConstant.boy1),
           title: Text("Hemendra",style: TextStyle(
             color: ColorConst.secondary,
             fontWeight: FontWeight.w500,
             fontSize: width*0.05
           ),),
           subtitle: Row(
              children: [
                Text("Verified Profile",style: TextStyle(
                   color: ColorConst.twelthColor,
                  fontWeight: FontWeight.w400,
                    fontSize: width*0.035
                ),),
                SvgPicture.asset(SvgConstant.badge),

              ],
           ),
           trailing: Container(
             alignment: Alignment.center,
              height: height*0.04,
              width: width*0.14,
             child: Text("3 Orders",style: TextStyle(
               color: ColorConst.eighth,
                 fontSize: width*0.03
             ),),
             decoration: BoxDecoration(
               color: ColorConst.thirtyColor,
               borderRadius: BorderRadius.circular(width*0.02)
               // borderRadius: BorderRadius.circular(radius)
             ),
           ),
         ),
          SizedBox(height: height*0.03,),
         ListTile(
          leading: SvgPicture.asset(SvgConstant.darkMode),
           title: Text("Dark Mode",style: TextStyle(
             color: ColorConst.secondary,
             fontWeight: FontWeight.w400
           ),),
           trailing: Stack(
             children: [
               InkWell(
                 onTap: () {
                   toggle = !toggle;
                   setState(() {});
                 },
                 child: Container(
                   height: width * 0.08,
                   width: width * 0.15,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(width * 0.09),
                     color: toggle == true ? ColorConst.fourtyColor:ColorConst.fourtyColor,
                   ),
                 ),
               ),

               AnimatedPositioned(
                   top: width*0.005,

                   left: toggle == true ? width*0.07 :width*0.01,
                   child: InkWell(
                     onTap: () {
                       toggle = !toggle;
                       setState(() {});
                     },
                     child: AnimatedContainer(
                         width: width*0.07,
                         height: width*0.07,

                         decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color:  toggle == true ? ColorConst.primaryColor:ColorConst.primaryColor),
                         duration: Duration(
                           milliseconds: 500,
                         )),
                   ),
                   duration: const Duration(milliseconds: 200)),
             ],
           ),
        ),
         ListTile(
           leading: SvgPicture.asset(SvgConstant.account),
           title: Text("Account Information",style: TextStyle(
             color: ColorConst.secondary,
             fontWeight: FontWeight.w400,

           ),),
         ),
         ListTile(
           leading: SvgPicture.asset(SvgConstant.password),
           title: Text("Password",style: TextStyle(
             color: ColorConst.secondary,
             fontWeight: FontWeight.w400,

           ),),
         ),
         ListTile(
           leading: SvgPicture.asset(SvgConstant.order),
           title: Text("Order",style: TextStyle(
             color: ColorConst.secondary,
             fontWeight: FontWeight.w400,

           ),),
         ),
         ListTile(
           leading: SvgPicture.asset(SvgConstant.myCard),
           title: Text("My Cards",style: TextStyle(
             color: ColorConst.secondary,
             fontWeight: FontWeight.w400,

           ),),
         ),
         ListTile(
           leading: SvgPicture.asset(SvgConstant.wishlist),
           title: Text("Wishlist",style: TextStyle(
             color: ColorConst.secondary,
             fontWeight: FontWeight.w400,

           ),),
         ),
         ListTile(
           leading: SvgPicture.asset(SvgConstant.settings),
           title: Text("Settings",style: TextStyle(
             color: ColorConst.secondary,
             fontWeight: FontWeight.w400,

           ),),
         ),
         SizedBox(height: height*0.09,),
         ListTile(
           leading: SvgPicture.asset(SvgConstant.logout),
           title: Text("Logout",style: TextStyle(
             color: ColorConst.fifteenColor,
             fontWeight: FontWeight.w500,

           ),),
         ),



          ],
         ),
       ),
        body: Padding(
          padding:  EdgeInsets.only(top: width*0.13,right: width*0.05,left: width*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hemendra",style: TextStyle(
                  color: ColorConst.secondary,
                  fontSize: width*0.07,
                  fontWeight: FontWeight.w600
              ),),
              Text("Welcome to Laza.",style: TextStyle(
                  color: ColorConst.twelthColor,
                  fontSize: width*0.05,
                  fontWeight: FontWeight.w400
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.7,
                    height: height*0.065,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Search...",
                        hintStyle: TextStyle(
                          color: ColorConst.twelthColor
                        ),
                        fillColor: ColorConst.sixteenColor,
                        filled: true,
                       border: OutlineInputBorder(
                         borderSide: BorderSide.none,
                         borderRadius: BorderRadius.circular(width*0.03)
                         )
                       )
                      ),
                  ),
                  Container(
                    width: width*0.15,
                    height: height*0.065,
                    child: SvgPicture.asset(SvgConstant.voice,fit: BoxFit.none,),
                    decoration: BoxDecoration(
                      color:ColorConst.seventeenColor,
                      borderRadius: BorderRadius.circular(width*0.03),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Arraival",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width*0.05,
                    color: ColorConst.secondary
                  ),),
                  Text("View All",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: width*0.04,
                    color: ColorConst.twelthColor
                  ),),
                ],
              ),
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing:width*0.05,
                  mainAxisSpacing: width*0.09
              ),
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          child: Image.asset(SvgConstant.image1),
                          width: width*0.425,
                          decoration: BoxDecoration(
                            color: ColorConst.thirdColor.withOpacity(0.39,),
                            borderRadius: BorderRadius.circular(width*0.05)
                      )
                        ),
                        Positioned(
                          right: width*0.05,
                            top: width*0.04,

                            child: SvgPicture.asset(SvgConstant.heart,width: width*0.07,))
                      ],
                    );



                  },
                itemCount: 1,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
              )


            ],
          ),
        ),
      );
    }
  }
