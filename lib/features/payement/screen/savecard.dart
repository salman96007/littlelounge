import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:flutter_flip_card/flipcard/flip_card.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';

import '../../../main.dart';

class Savecard extends StatefulWidget {
  const Savecard({super.key});

  @override
  State<Savecard> createState() => _SavecardState();
}

class _SavecardState extends State<Savecard> {
  TextEditingController cardOwnerController=TextEditingController();
  TextEditingController cardNumberController=TextEditingController();
  TextEditingController expController=TextEditingController();
  TextEditingController cvvrController=TextEditingController();
  final flipcontroller = FlipCardController();
  bool toggle = false;
  int active=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConst.primaryColor,
      resizeToAvoidBottomInset:false,
      appBar: AppBar(
        backgroundColor: ColorConst.primaryColor,
        title: Text("Payment",style: GoogleFonts.inter(
            fontWeight:FontWeight.w600,
            color: ColorConst.secondary
        ),),
        centerTitle: true,
      ),
      body:Column(
        children: [
         Padding(
           padding:  EdgeInsets.only(top:height*0.01),
           child: FlipCard(
             axis:FlipAxis.vertical,
               animationDuration:Durations.extralong1,
               onTapFlipping:true,
               controller: flipcontroller,
             rotateSide: RotateSide.left,
               frontWidget: Stack(
                 children:[ Container(
                   height:height*0.25,
                   width:width*0.87,
                   decoration: BoxDecoration(
                     color:Colors.red,
                     borderRadius:BorderRadius.circular(width*0.035),
                     image:DecorationImage(image:AssetImage(ImageConstant.creditCard,),fit:BoxFit.fill)
                   ),
                 ),
                   Positioned(
                     top:height*0.03,
                       left:width*0.07,
                       child:Text(cardOwnerController.text,style:TextStyle(
                         fontWeight:FontWeight.w600,
                         color:ColorConst.primaryColor,
                         fontSize:width*0.043
                       ),)),
                   Positioned(
                       top:height*0.03,
                       right:width*0.07,
                       child: SvgPicture.asset(SvgConstant.visaW,width:width*0.12,)),
                   Positioned(
                       top:height*0.1,
                       left:width*0.07,
                       child:Text("Visa Classic",style:TextStyle(
                           fontWeight:FontWeight.w600,
                           color:ColorConst.primaryColor,
                           fontSize:width*0.04,
                       ),)),
                   Positioned(
                       top:height*0.135,
                       left:width*0.07,
                       child:Text(cardNumberController.text,style:TextStyle(
                           color:ColorConst.primaryColor,
                           letterSpacing:width*0.015,
                           wordSpacing:width*0.02,
                           fontSize:width*0.045
                       ),)),
                   Positioned(
                       top:height*0.185,
                       left:width*0.07,
                       child:Text("3,763.87",style:TextStyle(
                           color:ColorConst.primaryColor,
                           fontWeight:FontWeight.w600,
                           fontSize:width*0.045
                       ),)),
                   Positioned(
                       top:height*0.185,
                       right:width*0.07,
                       child:Text(expController.text,style:TextStyle(
                           color:ColorConst.primaryColor,
                           fontWeight:FontWeight.w500,
                           fontSize:width*0.045
                       ),)),

             ]
               ),
               backWidget: Container(
                 height:height*0.25,
                 width:width*0.87,
                 decoration: BoxDecoration(
                     color:ColorConst.twentyFourColor.withOpacity(0.9),
                     borderRadius:BorderRadius.circular(width*0.035),
                 ),
                 child: Column(
                   children: [
                     SizedBox(height:height*0.035,),
                     Stack(
                       children:[ Container(
                         width:width*0.87,
                         height:height*0.055,
                         color:ColorConst.secondary,
                       ),
                         Positioned(
                           left:width*0.64,
                             top:height*0.01,
                             child:  Container(
                           height:height*0.035,
                           width:width*0.24,
                           color:ColorConst.primaryColor,
                               child:Text(cvvrController.text,style:TextStyle(
                                 color:ColorConst.secondary,
                                 //fontSize:width*0.03,
                                 fontWeight:FontWeight.w500
                               ),),
                         ))
                     ]),
                   ],
                 )

               ),  ),
         ),
          SizedBox(height:height*0.02,),
          Container(
            width:width*0.9,
            height:height*0.065,
            decoration:BoxDecoration(
              color:ColorConst.twentyOneColor,
              borderRadius: BorderRadius.circular(width*0.03),
              border: Border.all(
                color:ColorConst.thirdColor,
                width:width*0.002
              )
            ),
            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Icon(Icons.add_box_outlined,color: ColorConst.thirdColor,),
                SizedBox(width:width*0.01),
                Text("Add new card",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize:width*0.045,
                  color:ColorConst.thirdColor
                ),)
              ],
            ),

          ),

          SizedBox(height:height*0.02,),
          SizedBox(
            width:width*0.85,
            height:height*0.1,
            //color:Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text("Card Owner",style:GoogleFonts.inter(
                    color: ColorConst.nineth,
                    fontWeight: FontWeight.w500,
                    fontSize:width*0.04
                ),),
                TextFormField (
                  controller:cardOwnerController,
                  keyboardType:TextInputType.name,
                  textCapitalization:TextCapitalization.words,
                  textInputAction:TextInputAction.next,
                  style:TextStyle(
                      color:ColorConst.eighth,
                      fontSize:width*0.045
                  ),
                  decoration: InputDecoration(
                    constraints:BoxConstraints(
                        maxHeight:width*0.15
                    ),
                    fillColor:ColorConst.eleventh,
                    filled: true,
                    enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color:ColorConst.eleventh.withOpacity(0.5)
                        ),
                        borderRadius:BorderRadius.circular(width*0.03)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:ColorConst.eleventh
                        ),
                        borderRadius:BorderRadius.circular(width*0.03)
                    ),
                  ),
                  onChanged:(value) {
                    setState(() {
                      cardOwnerController.text=value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height:height*0.02,),
          SizedBox(
            width:width*0.85,
            height:height*0.1,
            //color:Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text("Card Number",style:GoogleFonts.inter(
                    color: ColorConst.nineth,
                    fontWeight: FontWeight.w500,
                    fontSize:width*0.04
                ),),
                TextFormField(
                  controller:cardNumberController,
                  keyboardType:TextInputType.number,
                  textInputAction:TextInputAction.next,
                  style:TextStyle(
                      color:ColorConst.eighth,
                      fontSize:width*0.045
                  ),
                  decoration: InputDecoration(
                    constraints:BoxConstraints(
                        maxHeight:width*0.15
                    ),
                    fillColor:ColorConst.eleventh,
                    filled: true,
                    enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color:ColorConst.eleventh.withOpacity(0.5)
                        ),
                        borderRadius:BorderRadius.circular(width*0.03)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:ColorConst.eleventh
                        ),
                        borderRadius:BorderRadius.circular(width*0.03)
                    ),
                  ),
                  onChanged:(value) {
                    setState(() {
                      cardNumberController.text=value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height:height*0.02,),
          Row(
            crossAxisAlignment:CrossAxisAlignment.start,
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width:width*0.4,
                height:height*0.1,
                //color: Colors.red,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("EXP",style:GoogleFonts.inter(
                        color: ColorConst.nineth,
                        fontWeight: FontWeight.w500,
                        fontSize:width*0.04
                    ),),
                    TextFormField(
                      controller:expController,
                      keyboardType:TextInputType.text,
                      textInputAction:TextInputAction.next,
                      style:TextStyle(
                          color:ColorConst.eighth,
                          fontSize:width*0.045
                      ),
                      decoration: InputDecoration(
                        constraints:BoxConstraints(
                            maxHeight:width*0.15
                        ),
                        fillColor:ColorConst.eleventh,
                        filled: true,
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.eleventh.withOpacity(0.5)
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.eleventh
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                      ),
                      onChanged:(value) {
                        setState(() {
                          expController.text=value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width:width*0.4,
                height:height*0.1,
                //color: Colors.red,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("CVV",style:GoogleFonts.inter(
                        color: ColorConst.nineth,
                        fontWeight: FontWeight.w500,
                        fontSize:width*0.04
                    ),),
                    TextFormField(
                      controller: cvvrController,
                      keyboardType:TextInputType.number,
                      textInputAction:TextInputAction.next,
                      style:TextStyle(
                          color:ColorConst.eighth,
                          fontSize:width*0.045
                      ),
                      decoration: InputDecoration(
                        constraints:BoxConstraints(
                            maxHeight:width*0.15
                        ),
                        fillColor:ColorConst.eleventh,
                        filled: true,
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.eleventh.withOpacity(0.5)
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:ColorConst.eleventh
                            ),
                            borderRadius:BorderRadius.circular(width*0.03)
                        ),
                      ),
                      onChanged:(value) {
                        setState(() {
                          cvvrController.text=value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height:height*0.01,),
          SizedBox(
            width:width*0.85,
            height:height*0.05,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Save as primary address",style:GoogleFonts.inter(
                    color: ColorConst.nineth,
                    fontWeight: FontWeight.w500,
                    fontSize:width*0.04
                ),),
                CupertinoSwitch(
                  focusColor:ColorConst.fourtyColor,
                  activeColor:ColorConst.seventeenColor,
                  value: toggle,
                  onChanged: (bool value) {
                    setState(() {
                      toggle = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height:height*0.04,
          ),
          Container(
            height: height*0.07,
            width: width*0.88,
            child: Center(
              child: Text("Save Card",style: TextStyle(
                fontSize: width*0.04,
                color: ColorConst.primaryColor,
                fontWeight: FontWeight.w500,
              ),),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.07),
              color: ColorConst.thirdColor,
            ),
          )

        ],
      ),

    );
  }
}















// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
//
//
// class CreditCardPage extends StatefulWidget {
//   const CreditCardPage({Key? key}) : super(key: key);
//
//   @override
//   _CreditCardPageState createState() => _CreditCardPageState();
// }
//
// class _CreditCardPageState extends State<CreditCardPage> {
//   String cardNumber = '';
//   String expiryDate= '';
//   String cardHolderName = '';
//   String cvvCode= '';
//   bool isCvvFocused = false;
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal[50],
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text('Flutter Credit Card View'),
//       ),
//       resizeToAvoidBottomInset: true,
//       body: Column(
//         children: [
//           CreditCardWidget(
//             cardNumber: cardNumber,
//             expiryDate: expiryDate,
//             cardHolderName: cardHolderName,
//             cvvCode: cvvCode,
//             showBackView: isCvvFocused,
//             obscureCardNumber: true,
//             obscureCardCvv: true,
//             backgroundImage:"assets/images/creditcard.png",
//             onCreditCardWidgetChange: (CreditCardBrand ) {
//
//
//             },
//
//           ),
//           Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     CreditCardForm(
//
//                       cardNumber: cardNumber,
//                       expiryDate: expiryDate,
//                       cardHolderName: cardHolderName,
//                       cvvCode: cvvCode,
//                       onCreditCardModelChange: onCreditCardModelChange,
//                       // themeColor: Colors.blue,
//                       formKey: formKey,
//                       // cardNumberDecoration: InputDecoration(
//                       //     border: OutlineInputBorder(),
//                       //     labelText: 'Number',
//                       //     hintText: 'xxxx xxxx xxxx xxxx'
//                       // ),
//                       // expiryDateDecoration: InputDecoration(
//                       //     border: OutlineInputBorder(),
//                       //     labelText: 'Expired Date',
//                       //     hintText: 'xx/xx'
//                       // ),
//                       // cvvCodeDecoration: InputDecoration(
//                       //     border: OutlineInputBorder(),
//                       //     labelText: 'CVV',
//                       //     hintText: 'xxx'
//                       // ),
//                       // cardHolderDecoration: InputDecoration(
//                       //   border: OutlineInputBorder(),
//                       //   labelText: 'Card Holder',
//                       // ),
//
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           backgroundColor: Colors.blue
//
//                       ),
//                       child: Container(
//                         margin: EdgeInsets.all(8.0),
//                         child: Text(
//                           'validate',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontFamily: 'halter',
//                             fontSize: 14,
//                             package: 'flutter_credit_card',
//                           ),
//                         ),
//                       ),
//                       onPressed: (){
//                         if(formKey.currentState!.validate()){
//                           print('valid');
//                         }
//                         else{
//                           print('inValid');
//                         }
//                       },)
//                   ],
//                 ),
//               )),
//         ],
//       ),
//     );
//   }
//
//   void onCreditCardModelChange(CreditCardModel creditCardModel){
//     setState(() {
//       cardNumber = creditCardModel.cardNumber;
//       expiryDate = creditCardModel.expiryDate;
//       cardHolderName = creditCardModel.cardHolderName;
//       cvvCode = creditCardModel.cvvCode;
//       isCvvFocused = creditCardModel.isCvvFocused;
//     });
//   }
// }