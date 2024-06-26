  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/main.dart';

import '../../../constant/colorconstant.dart';

class HomePage extends StatefulWidget {
         final String name;
    const HomePage({super.key,
      required this.name,
    });

    @override
    State<HomePage> createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
  bool view = false;
  List<Map<String,dynamic>> dress = [
    {
      "imag" : ImageConstant.image1,
       "name" : "Imported Collection",
       "rate" : 3000
    },
    {
      "imag" : ImageConstant.kid4,
      "name" : "Imported Collection",
      "rate" : 2900
    },
    {
      "imag" : ImageConstant.kid3,
      "name" : "Western Collection",
      "rate" : 3300
    },
    {
      "imag" : ImageConstant.kid5,
      "name" : "Co-Ord Set",
      "rate" : 3700
    },
    {
      "imag" : ImageConstant.kid6,
      "name" : "Jumpsuit",
      "rate" : 3900
    },
    {
      "imag" : ImageConstant.kid2,
      "name" : "Trendy Co-Ord Set",
      "rate" : 3250
    },

  ];
  List<Map<String,dynamic>> dress1 = [
    {
      "imag" : ImageConstant.men1,
      "name" : "Imported Collection",
      "rate" : 3500
    },
    {
      "imag" : ImageConstant.men2,
      "name" : "Imported Collection",
      "rate" : 3700
    },
    {
      "imag" : ImageConstant.men3,
      "name" : "Western Collection",
      "rate" : 3400
    },
    {
      "imag" : ImageConstant.men4,
      "name" : "Co-Ord Set",
      "rate" : 3800
    },
    {
      "imag" : ImageConstant.men5,
      "name" : "Jumpsuit",
      "rate" : 4900
    },
    {
      "imag" : ImageConstant.men6,
      "name" : "Trendy Co-Ord Set",
      "rate" : 4250
    },

  ];
  List<Map<String,dynamic>> dress2 = [
    {
      "imag" : ImageConstant.image1,
      "name" : "Imported Collection",
      "rate" : 2300
    },
    {
      "imag" : ImageConstant.men1,
      "name" : "Imported Collection",
      "rate" : 4700
    },
    {
      "imag" : ImageConstant.kid3,
      "name" : "Western Collection",
      "rate" : 4400
    },
    {
      "imag" : ImageConstant.men3,
      "name" : "Co-Ord Set",
      "rate" : 3400
    },
    {
      "imag" : ImageConstant.kid6,
      "name" : "Jumpsuit",
      "rate" : 4500
    },
    {
      "imag" : ImageConstant.men6,
      "name" : "Trendy Co-Ord Set",
      "rate" : 4250
    },

  ];
  bool toggle =false;
  bool favour =false;
  List fav =[];
  List<Map<String,dynamic>> foundItems = [];
  List<Map<String,dynamic>> foundItems1 = [];
  List<Map<String,dynamic>> foundItems2 = [];

  @override
  void initState() {
    print(widget.name);
      foundItems= dress;
      foundItems1 = dress1;
      foundItems2 = dress2;
    // TODO: implement initState
    super.initState();
  }





  @override

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
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
           leading: Image.asset(ImageConstant.kid1),
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
               borderRadius: BorderRadius.circular(width*0.02),
               // borderRadius: BorderRadius.circular(radius)
             ),
           ),
         ),
          SizedBox(height: height*0.03,),
         ListTile(
          leading: SvgPicture.asset(SvgConstant.darkMode),
           title: Text("Dark Mode",style: TextStyle(
             color: ColorConst.secondary,
             fontWeight: FontWeight.w400,
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
          padding:  EdgeInsets.only(right: width*0.05,left: width*0.05),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: height*0.05,),
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
              SizedBox(height: height*0.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.7,
                    height: height*0.065,
                    child: TextFormField(
                       // onChanged: (value) => filterItems(value),
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
                      color:ColorConst.seventh,
                      borderRadius: BorderRadius.circular(width*0.03),
                    ),
                  )
                ],
              ),
              SizedBox(height: height*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Arraival",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width*0.05,
                    color: ColorConst.secondary
                  ),),
                  InkWell(
                    onTap: () {
                      view = !view;
                      setState(() {

                      });
                    },
                    child:  Text(view?"View Less":"View All",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: width*0.04,
                      color: ColorConst.twelthColor
                    ),)
                  ),
                ],
              ),
              SizedBox(height: height*0.03,),
            
           widget.name=="man"? foundItems1.isNotEmpty?  GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    childAspectRatio: 0.5,
                    crossAxisSpacing:width*0.04,
                    mainAxisSpacing: width*0.01
                ),
                itemBuilder: (context, index)
                {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                              child: Image.asset(foundItems1[index]["imag"],),
                              width: width*0.425,
                              height: height*0.3,
                              decoration: BoxDecoration(
                                  color: ColorConst.forth.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(width*0.05),
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
                          Positioned(
                              right: width*0.05,
                              top: width*0.04,

                              child: GestureDetector(
                                  onTap: () {
                                    if(fav.contains(index)){
                                      fav.remove(index);
                                    }else{
                                      fav.add(index);
                                    }
                                    setState(() {

                                    });
                                  },
                                  child:  Icon(!fav.contains(index)?Icons.favorite_outline:Icons.favorite,color: ColorConst.sixth,)))
                        ],
                      ),
                      SizedBox(height: height*0.02,),
                      Text(foundItems1[index]["name"],style: TextStyle(
                          color: ColorConst.secondary,
                          fontWeight: FontWeight.w500,
                          fontSize: width*0.04
                      ),),
                      Row(
                        children: [
                          SvgPicture.asset(SvgConstant.rupees,width: width*0.05,),
                          Text(foundItems1[index]["rate"].toString(),style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.05
                          ),),
                        ],
                      ),
                    ],
                  );



                },

                itemCount: view?foundItems1.length: 4,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
              )
                  :Text("No results found",style: TextStyle(
                  color: ColorConst.sixth,
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.05
              ),):SizedBox(),
              widget.name=="woman"? foundItems.isNotEmpty?  GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    childAspectRatio: 0.5,
                    crossAxisSpacing:width*0.04,
                    mainAxisSpacing: width*0.01
                ),
                itemBuilder: (context, index)
                {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                              child: Image.asset(foundItems[index]["imag"],),
                              width: width*0.425,
                              height: height*0.3,
                              decoration: BoxDecoration(
                                  color: ColorConst.forth.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(width*0.05),
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
                          Positioned(
                              right: width*0.05,
                              top: width*0.04,

                              child: GestureDetector(
                                  onTap: () {
                                    if(fav.contains(index)){
                                      fav.remove(index);
                                    }else{
                                      fav.add(index);
                                    }
                                    setState(() {

                                    });
                                  },
                                  child:  Icon(!fav.contains(index)?Icons.favorite_outline:Icons.favorite,color: ColorConst.sixth,)))
                        ],
                      ),
                      SizedBox(height: height*0.02,),
                      Text(foundItems[index]["name"],style: TextStyle(
                          color: ColorConst.secondary,
                          fontWeight: FontWeight.w500,
                          fontSize: width*0.04
                      ),),
                      Row(
                        children: [
                          SvgPicture.asset(SvgConstant.rupees,width: width*0.05,),
                          Text(foundItems[index]["rate"].toString(),style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.05
                          ),),
                        ],
                      ),
                    ],
                  );



                },

                itemCount: view?foundItems2.length: 4,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
              )
                  :Text("No results found",style: TextStyle(
                  color: ColorConst.sixth,
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.05
              ),):SizedBox(),
              widget.name=="skip"? foundItems.isNotEmpty?  GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    childAspectRatio: 0.5,
                    crossAxisSpacing:width*0.04,
                    mainAxisSpacing: width*0.01
                ),
                itemBuilder: (context, index)
                {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                              child: Image.asset(foundItems2[index]["imag"],),
                              width: width*0.425,
                              height: height*0.3,
                              decoration: BoxDecoration(
                                  color: ColorConst.forth.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(width*0.05),
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
                          Positioned(
                              right: width*0.05,
                              top: width*0.04,

                              child: GestureDetector(
                                  onTap: () {
                                    if(fav.contains(index)){
                                      fav.remove(index);
                                    }else{
                                      fav.add(index);
                                    }
                                    setState(() {

                                    });
                                  },
                                  child:  Icon(!fav.contains(index)?Icons.favorite_outline:Icons.favorite,color: ColorConst.sixth,)))
                        ],
                      ),
                      SizedBox(height: height*0.02,),
                      Text(foundItems2[index]["name"],style: TextStyle(
                          color: ColorConst.secondary,
                          fontWeight: FontWeight.w500,
                          fontSize: width*0.04
                      ),),
                      Row(
                        children: [
                          SvgPicture.asset(SvgConstant.rupees,width: width*0.05,),
                          Text(foundItems2[index]["rate"].toString(),style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.05
                          ),),
                        ],
                      ),
                    ],
                  );



                },

                itemCount: view?foundItems2.length: 4,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
              )
                  :Text("No results found",style: TextStyle(
                  color: ColorConst.sixth,
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.05
              ),):SizedBox()
            ],
          ),
        ),
      );
    }
  }
