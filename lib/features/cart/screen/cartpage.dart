import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/features/auth/controller/authcontroller.dart';
import 'package:littlelounge/features/cart/screen/checkoutpage.dart';
import 'package:littlelounge/features/home/screen/wishlistpage.dart';
import 'package:littlelounge/model/productmodel.dart';

import '../../../constant/colorconstant.dart';
import '../../../constant/imageconstant.dart';
import '../../../main.dart';
import '../../../model/usermodel.dart';
import '../../home/controller/collectioncontroller.dart';

class CartPage extends ConsumerStatefulWidget {
  final ProductModel detail;
  const CartPage({super.key,
    required this.detail

  });

  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  int count=0;



  add(){
    count++;
  }
  substract(){
    count--;
  }

  // updateAddCart({required UserModel userModel}){
  //   ref.watch(ControllerProvider).updateAddToCartData(userModel.copyWith(addTOCart:userModel.addTOCart));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.primaryColor,
      appBar: AppBar(
        title: Text("My Cart",style: TextStyle(
          color: ColorConst.secondary,
          fontWeight: FontWeight.w600,
          fontSize: width*0.05,
        ),),
        elevation: 1,
        backgroundColor: ColorConst.primaryColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
         Column(
           children: [
             Container(
                width: width*1,
                 child:ref.watch(userStreamProvider).when(
                   data: (user) {
                      return user.addTOCart.isEmpty?
                          Text("no addToCart"):
                      ListView.separated(
                        physics: BouncingScrollPhysics(),
                        itemCount:user.addTOCart.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return
                            ref.watch(StreamProduct1(user.addTOCart[index])).when(
                                data: (data) => Container(
                                    margin: EdgeInsets.only(right: width*0.05,left: width*0.05,top: width*0.07),
                                    width: width*0.9,
                                    height: height*0.25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(width*0.03),
                                        color: ColorConst.primaryColor,
                                        boxShadow: [
                                          BoxShadow(
                                              color: ColorConst.forth.withOpacity(0.2),
                                              blurRadius: 4,
                                              spreadRadius:2,
                                              offset: Offset(0,4)
                                          )
                                        ]
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left:width*0.05),
                                          width: width*0.28,
                                          height: height*0.20,
                                          child: Image.network(data.images[0],fit: BoxFit.fill,),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage(ImageConstant.bg)),
                                              borderRadius: BorderRadius.circular(width*0.03),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: ColorConst.secondary.withOpacity(0.15),
                                                    blurRadius: 4,
                                                    spreadRadius: 2,
                                                    offset: Offset(0, 4)

                                                )
                                              ]


                                          ),


                               ),
                               Padding(
                                 padding:  EdgeInsets.only(top: width*0.05,left: width*0.05),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Text("Men's Tie-Dye T-Shirt\nNike Sportswear",style: TextStyle(
                                         color: ColorConst.secondary,
                                         fontWeight: FontWeight.w500,
                                         fontSize: width*0.04
                                     ),),
                                     Row(
                                       children: [
                                         SvgPicture.asset(SvgConstant.rupees,width: width*0.04

                                           ,),
                                         Text("500"),
                                       ],
                                     ),
                                     Row(
                                       children: [
                                         Container(
                                             width: width*0.07,
                                             height: height*0.07,
                                             decoration: BoxDecoration(
                                                 shape: BoxShape.circle,
                                                 border: Border.all(
                                                     color: ColorConst.twentyColor
                                                 )


                                             ),
                                             child: SvgPicture.asset(SvgConstant.down,fit: BoxFit.none,)),
                                         SizedBox(width: width*0.04,),
                                         Text("1",style: TextStyle(
                                             color: ColorConst.secondary,
                                             fontWeight: FontWeight.w600,
                                             fontSize: width*0.05

                                         ),),
                                         SizedBox(width: width*0.04,),
                                         Container(
                                             width: width*0.07,
                                             height: height*0.07,
                                             decoration: BoxDecoration(
                                                 shape: BoxShape.circle,
                                                 border: Border.all(
                                                     color: ColorConst.twentyColor
                                                 )


                                             ),
                                             child: SvgPicture.asset(SvgConstant.up,fit: BoxFit.none,)),
                                         SizedBox(width: width*0.13,),
                                         Container(
                                           // margin: EdgeInsets.only(top: width*0.34),
                                             width: width*0.07,
                                             height: height*0.07,
                                             decoration: BoxDecoration(
                                                 shape: BoxShape.circle,
                                                 border: Border.all(
                                                     color: ColorConst.twentyColor
                                                 )


                                             ),
                                             child: SvgPicture.asset(SvgConstant.delete,fit: BoxFit.none,)),

                                       ],),
                                   ],
                                 ),

                                        ),
                                      ],
                                    )

                                ),
                                error: (error, stackTrace) => Text(error.toString()),
                                loading: () => CircularProgressIndicator(),);

                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: width*0.01,
                            );
                          },
                      );
                   },
                   error: (error, stackTrace) => Text(error.toString()),
                   loading: () => CircularProgressIndicator(),)


             ),
             Padding(
               padding: EdgeInsets.all(width*0.05),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Price Details",style: TextStyle(
                       color: ColorConst.secondary,
                       fontWeight: FontWeight.w500,
                       fontSize: width*0.055
                   ),),
                   SizedBox(height: height*0.01,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Subtotal",style: TextStyle(
                           fontWeight: FontWeight.w400,
                           fontSize: width*0.045,
                           color: ColorConst.twelthColor
                       ),),
                       Row(
                         children: [
                           SvgPicture.asset(SvgConstant.rupees,width: width*0.04,),
                           Text("120",style: TextStyle(
                               fontWeight: FontWeight.w500,
                               color: ColorConst.secondary,
                               fontSize: width*0.04
                           ),)
                         ],
                       )

                     ],
                   ),
                   SizedBox(height: height*0.01,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Delivery Charge",style: TextStyle(
                           fontWeight: FontWeight.w400,
                           fontSize: width*0.045,
                           color: ColorConst.twelthColor
                       ),),
                       Row(
                         children: [
                           SvgPicture.asset(SvgConstant.rupees,width: width*0.04,),
                           Text("10",style: TextStyle(
                               fontWeight: FontWeight.w500,
                               color: ColorConst.secondary,
                               fontSize: width*0.04
                           ),)
                         ],
                       )

                     ],
                   ),
                   SizedBox(height: height*0.01,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Total",style: TextStyle(
                           fontWeight: FontWeight.w400,
                           fontSize: width*0.045,
                           color: ColorConst.twelthColor
                       ),),
                       Row(
                         children: [
                           SvgPicture.asset(SvgConstant.rupees,width: width*0.04,),
                           Text("140",style: TextStyle(
                               fontWeight: FontWeight.w500,
                               color: ColorConst.secondary,
                               fontSize: width*0.04
                           ),)
                         ],
                       )

                     ],
                   ),
                 ],
               ),
             ),
             InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage(data: '',details:widget.detail, selectedsize: '',)));
               },
               child: Container(
                 alignment: Alignment.center,
                 width: width*0.75,
                 height: height*0.065,
                 child: Text("Checkout",style: TextStyle(
                     color: ColorConst.primaryColor,
                     fontWeight: FontWeight.w500,
                     fontSize: width*0.05
                 ),),
                 decoration: BoxDecoration(
                   color: ColorConst.thirdColor,
                   borderRadius: BorderRadius.circular(width*0.03),
                 ),
               ),
             )
           ],
         ),

        ],
      ),
    );
  }
}
