import 'dart:io';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/features/auth/controller/authcontroller.dart';
import 'package:littlelounge/features/auth/screen/loginpage.dart';
import 'package:littlelounge/features/auth/screen/signuppage.dart';
import 'package:littlelounge/features/cart/screen/cartpage.dart';
import 'package:littlelounge/features/home/controller/collectioncontroller.dart';
import 'package:littlelounge/features/home/screen/detaileddress.dart';
import 'package:littlelounge/features/home/screen/settingspage.dart';
import 'package:littlelounge/main.dart';
import 'package:littlelounge/model/productmodel.dart';
import 'package:littlelounge/model/usermodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constant/colorconstant.dart';
import '../../auth/respository/authrespository.dart';
import '../../auth/screen/createaccount.dart';

class HomePage extends ConsumerStatefulWidget {
  final String id;
  const HomePage({super.key, required this.id,
  });

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  getUserName() async {
    SharedPreferences prefs1 =await SharedPreferences.getInstance();
    currentUSerName = prefs1.getString("user");
    currentUserImage =prefs1.getString("sign1");
  }



  bool view = false;
  bool favour = false;
  List fav = [];
  List<dynamic> faver = [];
  @override
  void initState() {
    getUserName();
    // TODO: implement initState
    super.initState();
  }

  var file;
  pickFile(ImageSource) async {
    final imageFile = await ImagePicker.platform.pickImage(source: ImageSource);
    file = File(imageFile!.path);
    if (mounted) {
      setState(() {
        file = File(imageFile.path);
      });
    }
    uploadImage();
  }

  String imageUrl = "";
  uploadImage() async {
    var uploadPick = await FirebaseStorage.instance
        .ref("newUsers")
        .child("path ${DateTime.now()}")
        .putFile(file, SettableMetadata(contentType: "image/jpeg"));
    var getUrl = await uploadPick.ref.getDownloadURL();
    imageUrl = getUrl;
    updatedata(imageUrl: imageUrl);
    currentUserImage = imageUrl;
    setState(() {});
  }

  updatedata({required String imageUrl}) {
    ref.watch(ControllerProvider).userData(imageUrl: imageUrl);
  }

  updatefavourites({required UserModel detail}) {
    ref
        .watch(ControllerProvider)
        .updatedfavourite(detail.copyWith(favourites: detail.favourites));
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
              padding: EdgeInsets.only(right: width * 0.05),
              child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => CartPage(detail: d,),
                    //     ));
                  },
                  child: Icon(
                    CupertinoIcons.cart,
                    size: width * 0.075,
                  )))
        ],
        elevation: 1,
      ),
      drawer: Drawer(
        shape: BeveledRectangleBorder(
            side: BorderSide(color: ColorConst.primaryColor)),
        backgroundColor: ColorConst.primaryColor,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: width * 0.15,
                      backgroundImage:
                      NetworkImage(currentUserImage.toString()),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: width * 0.012),
                      child: CircleAvatar(
                          radius: width * 0.05,
                          child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      alignment: Alignment.center,
                                      title: Text(
                                        "Choose From",
                                        style: TextStyle(
                                            color: ColorConst.secondary),
                                        textAlign: TextAlign.center,
                                      ),
                                      backgroundColor: ColorConst.primaryColor,
                                      content: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              pickFile(ImageSource.camera);
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              height: height * 0.045,
                                              width: width * 0.15,
                                              decoration: BoxDecoration(
                                                  color: ColorConst.seventh,
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.03)),
                                              child: Icon(
                                                Icons.camera,
                                                color: ColorConst.primaryColor,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              pickFile(ImageSource.gallery);

                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              height: height * 0.045,
                                              width: width * 0.15,
                                              decoration: BoxDecoration(
                                                  color: ColorConst.seventh,
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.03)),
                                              child: Icon(
                                                Icons.photo,
                                                color: ColorConst.primaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Icon(Icons.edit))),
                    ),
                  ],
                ),
                ListTile(
                  title: Text(
                    currentUSerName.toString(),
                    style: TextStyle(
                        color: ColorConst.secondary,
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.06),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        "Verified Profile",
                        style: TextStyle(
                            color: ColorConst.twelthColor,
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.045),
                      ),
                      SvgPicture.asset(SvgConstant.badge),
                    ],
                  ),
                  trailing: Container(
                    alignment: Alignment.center,
                    height: height * 0.04,
                    width: width * 0.2,
                    child: Text(
                      "3 Orders",
                      style: TextStyle(
                          color: ColorConst.eighth, fontSize: width * 0.04),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConst.thirtyColor,
                      borderRadius: BorderRadius.circular(width * 0.02),
                      // borderRadius: BorderRadius.circular(radius)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            ListTile(
              leading: SvgPicture.asset(SvgConstant.account),
              title: Text(
                "Account Information",
                style: TextStyle(
                  color: ColorConst.secondary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(SvgConstant.password),
              title: Text(
                "Password",
                style: TextStyle(
                  color: ColorConst.secondary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(SvgConstant.order),
              title: Text(
                "Order",
                style: TextStyle(
                  color: ColorConst.secondary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(SvgConstant.myCard),
              title: Text(
                "My Cards",
                style: TextStyle(
                  color: ColorConst.secondary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(SvgConstant.wishlist),
              title: Text(
                "Wishlist",
                style: TextStyle(
                  color: ColorConst.secondary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ));
              },
              child: ListTile(
                leading: SvgPicture.asset(SvgConstant.settings),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    color: ColorConst.secondary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        "Are you sure log out ?",
                        style: TextStyle(fontSize: width * 0.05),
                      ),
                      content: Padding(
                        padding: EdgeInsets.only(top: height * 0.06),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                prefs.remove("login");
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login()
                                  ),
                                  (route) => false,
                                );
                              },
                              child: Container(
                                height: height * 0.045,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                  color: ColorConst.thirdColor,
                                  borderRadius:
                                      BorderRadius.circular(width * 0.04),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.13),
                                        blurRadius: 6,
                                        spreadRadius: 3,
                                        offset: Offset(0, 4))
                                  ],
                                ),
                                child: Center(
                                    child: Text(
                                  "Yes",
                                  style: TextStyle(
                                      color: ColorConst.primaryColor,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: height * 0.045,
                                width: width * 0.2,
                                decoration: BoxDecoration(
                                  color: ColorConst.primaryColor,
                                  borderRadius:
                                      BorderRadius.circular(width * 0.04),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.13),
                                        blurRadius: 6,
                                        spreadRadius: 3,
                                        offset: Offset(0, 4))
                                  ],
                                ),
                                child: Center(
                                    child: Text("No",
                                        style: TextStyle(
                                            color: ColorConst.secondary,
                                            fontWeight: FontWeight.w500))),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                leading: SvgPicture.asset(SvgConstant.logout),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: ColorConst.fifteenColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: width * 0.05, left: width * 0.05),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              currentUSerName.toString(),
              style: TextStyle(
                  color: ColorConst.secondary,
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Welcome to LittleLounge.",
              style: TextStyle(
                  color: ColorConst.twelthColor,
                  fontSize: width * 0.043,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.7,
                  height: height * 0.065,
                  child: TextFormField(
                      // onChanged: (value) => filterItems(value),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle: TextStyle(color: ColorConst.twelthColor),
                          fillColor: ColorConst.sixteenColor,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.circular(width * 0.03)))),
                ),
                Container(
                  width: width * 0.15,
                  height: height * 0.065,
                  child: SvgPicture.asset(
                    SvgConstant.voice,
                    fit: BoxFit.none,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConst.seventh,
                    borderRadius: BorderRadius.circular(width * 0.03),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arraival",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.05,
                      color: ColorConst.secondary),
                ),
                InkWell(
                    onTap: () {
                      view = !view;
                      setState(() {});
                    },
                    child: Text(
                      view ? "View Less" : "View All",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.04,
                          color: ColorConst.twelthColor),
                    )),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            ref.watch(StreamProduct(widget.id)).when(
                  data: (data) => GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.5,
                        crossAxisSpacing: width * 0.04,
                        mainAxisSpacing: width * 0.01),
                    itemCount: data.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailedDress(
                                                detail: data[index],
                                              )));
                                },
                                child: Container(
                                    child: Image.network(
                                      data[index].images[0],
                                    ),
                                    width: width * 0.425,
                                    height: height * 0.3,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(width * 0.05),
                                        image: DecorationImage(
                                            image: AssetImage(ImageConstant.bg),
                                            fit: BoxFit.cover),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              blurRadius: 4,
                                              spreadRadius: 2,
                                              offset: Offset(0, 3))
                                        ])),
                              ),
                              Positioned(
                                  right: width * 0.05,
                                  top: width * 0.04,
                                  child: GestureDetector(
                                      onTap: () {
                                        if (currentUserModel!.favourites
                                            .contains(data[index].productId)) {
                                          currentUserModel!.favourites
                                              .remove(data[index].productId);

                                        }
                                        else {
                                          currentUserModel!.favourites
                                              .add(data[index].productId);
                                        }
                                        updatefavourites(detail: currentUserModel!);

                                        setState(() {});
                                      },
                                      child: Icon(
                                            currentUserModel!.favourites .contains(data[index].productId)
                                            ? Icons.favorite
                                            : Icons.favorite_outline,
                                        color: ColorConst.sixth,
                                      ),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Text(
                            data[index].name,
                            style: TextStyle(
                                color: ColorConst.secondary,
                                fontWeight: FontWeight.w500,
                                fontSize: width * 0.037),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                SvgConstant.rupees,
                                width: width * 0.04,
                              ),
                              Text(
                               data[index].prize.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.04),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => CircularProgressIndicator(),
                )
          ],
        ),
      ),
    );
  }
}
