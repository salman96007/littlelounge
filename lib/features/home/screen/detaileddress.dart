
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/features/bottomnavigation/screen/bottomnavigation.dart';
import 'package:littlelounge/features/cart/screen/cartpage.dart';
import 'package:littlelounge/features/cart/screen/orderpage.dart';
import 'package:littlelounge/model/productmodel.dart';
import 'package:pinput/pinput.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constant/colorconstant.dart';
import '../../../constant/imageconstant.dart';
import '../../../main.dart';
import '../../cart/screen/checkoutpage.dart';

class DetailedDress extends ConsumerStatefulWidget {
  final ProductModel detail;
  const DetailedDress({super.key,
    required this.detail
  });

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
  int activeIndex=0;

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
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>CheckoutPage(),));
            },
            child: Container(
              height:height*0.07,
              width:width*0.5,
              color:ColorConst.thirdColor,
              child:Center(child: Text("Buy now",style:TextStyle(
                  fontWeight: FontWeight.w600,
                  color:ColorConst.primaryColor,
                  fontSize:width*0.04
              ),)),
            ),
          )
        ],
      ),

      body: ListView(
        children: [
          CarouselSlider.builder(
            itemCount:widget.detail.images.length ,
            itemBuilder:(context, index, realIndex) {
              return Stack(
                  children:[
                    Container(
                    child: Image.network(widget.detail.images[index],fit:BoxFit.cover,),
                        width: width*1,
                        height: height*0.45,
                        decoration: BoxDecoration(
                            image:DecorationImage(image:AssetImage(ImageConstant.bg),fit:BoxFit.cover)
                        )
                    ),
                    Positioned(
                        top:height*0.015,
                        left:width*0.04,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePageView(),));
                          },
                          child: Icon(Icons.arrow_back),
                        )),
                    Positioned(
                        top:height*0.015,
                        right:width*0.04,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>Orderpage(),));
                          },
                          child: SvgPicture.asset(SvgConstant.order),
                        ))
                  ]
              );
            },
            options: CarouselOptions(
                height: height*0.45,
                onPageChanged: (index, reason) {
                  activeIndex=index;
                  setState(() {
                  });
                },
                autoPlay: false,
                autoPlayAnimationDuration: Duration(seconds: 2),
                viewportFraction:1
            ),),
          SizedBox(height:height*0.015),
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: widget.detail.images.length,
              effect:
              WormEffect(
                activeDotColor:ColorConst.secondary,
                dotColor:ColorConst.twelthColor,
                type: WormType.underground,
                dotHeight:width*0.025,
                dotWidth:width*0.025,
              ),

            ),
          ),

          Padding(
            padding:  EdgeInsets.all(width*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nike Club Fleece",style: TextStyle(
                    color: ColorConst.secondary,
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.06
                ),),
                Text("The Nike Throwback Pullover Hoodie is made\nfrom premium French terry fabric that blends a performance feel with",style: TextStyle(
                    color: ColorConst.twelthColor,
                    fontWeight: FontWeight.w400
                )),
                SizedBox(height:width*0.01,),
                // Text("Sale Price",style: TextStyle(
                //     color: ColorConst.secondary,
                //     fontWeight: FontWeight.w500,
                //     fontSize: width*0.045
                // ),),
                Text("₹${widget.detail.prize}",style: GoogleFonts.archivo(
                  fontWeight: FontWeight.w700,
                  fontSize: width*0.065,

                ),),

                SizedBox(height: height*0.005),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Size",style: TextStyle(
                        color: ColorConst.secondary,
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.04
                    ),),
                    Text("Size Guide",style: TextStyle(
                        color: ColorConst.twelthColor,
                        fontWeight: FontWeight.w400,
                        fontSize: width*0.04
                    ),),
                  ],
                ),
                SizedBox(height: height*0.01,),
                Container(
                  height: height*0.07,
                  child: ListView.separated(itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        selectedSize = Size[index];
                        setState(() {

                        });
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: width*0.155,
                          decoration: BoxDecoration(
                              color: selectedSize== Size[index]? ColorConst.thirdColor.withOpacity(0.15):ColorConst.eleventh,
                              borderRadius: BorderRadius.circular(width*0.03)
                          ),
                          child: Text(Size[index],style: TextStyle(
                              color: ColorConst.secondary,
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.05
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
