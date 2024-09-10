import 'dart:convert';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:littlelounge/features/home/controller/collectioncontroller.dart';
import 'package:littlelounge/features/home/screen/homepage.dart';
import 'package:littlelounge/features/home/screen/welcomepage.dart';
import 'package:littlelounge/model/productmodel.dart';

import '../../../constant/colorconstant.dart';
import '../../../constant/imageconstant.dart';
import '../../../main.dart';
import '../../../model/usermodel.dart';
import '../../auth/controller/authcontroller.dart';
import '../../auth/respository/authrespository.dart';
import 'detaileddress.dart';


String? ProductId1;

class WishListPage extends ConsumerStatefulWidget {
  const WishListPage({super.key});

  @override
  ConsumerState<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends ConsumerState<WishListPage> {
  updatefavourites({required UserModel detail}) {
    ref
        .watch(ControllerProvider)
        .updatedfavourite(detail.copyWith(favourites: detail.favourites));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.primaryColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: width * 0.05),
            child: SvgPicture.asset(SvgConstant.lock1),
          )
        ],
        elevation: 1,
        title: Text(
          "Wishlist",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: ColorConst.secondary,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.only(
              right: width * 0.05, left: width * 0.05, top: width * 0.09),
          // child: ref.watch(StreamUser(currentUSerId.toString())).when(
          //     data: (data) =>  GridView.builder(
          //       physics: BouncingScrollPhysics(),
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          //           childAspectRatio: 0.5,
          //           crossAxisSpacing:width*0.04,
          //           mainAxisSpacing: width*0.01
          //       ),
          //       itemCount: data.favourites.length,
          //       shrinkWrap: true,
          //       scrollDirection: Axis.vertical,
          //       itemBuilder: (context, index)
          //       {
          //         return Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(data.favourites[index],style: TextStyle(
          //                 color: ColorConst.secondary,
          //                 fontWeight: FontWeight.w500,
          //                 fontSize: width*0.037
          //             ),),
          //           ],
          //         );
          //       },
          //     ),
          //   error: (error, stackTrace) => Text(error.toString()),
          //   loading: () => CircularProgressIndicator(),),

          child: ref.watch(userStreamProvider).when(
                data: (user) {
                  return user.favourites.isEmpty
                      ? Text("favourites no add")
                      : GridView.builder(
                          physics: BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.5,
                                  crossAxisSpacing: width * 0.04,
                                  mainAxisSpacing: width * 0.01),
                          shrinkWrap: true,
                          itemCount: user.favourites.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return ref
                                .watch(StreamProduct1(user.favourites[index]))
                                .when(
                                  data: (data) => Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          GestureDetector(
                                            onTap:() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => DetailedDress(detail: data,)));
                                            },
                                            child: Container(
                                                child: Image.network(
                                                  data.image.toString(),
                                                ),
                                                width: width * 0.425,
                                                height: height * 0.3,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        width *
                                                            0.05),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .bg),
                                                        fit: BoxFit.cover),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Colors
                                                              .black
                                                              .withOpacity(
                                                              0.1),
                                                          blurRadius: 4,
                                                          spreadRadius: 2,
                                                          offset:
                                                          Offset(0, 3))
                                                    ])),
                                          ),
                                          Positioned(
                                              right: width * 0.05,
                                              top: width * 0.04,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    ProductId1 =
                                                        data.productId;
                                                    if (currentUserModel!
                                                        .favourites
                                                        .contains(data
                                                        .productId)) {
                                                      currentUserModel!
                                                          .favourites
                                                          .remove(data
                                                          .productId);
                                                    } else {
                                                      currentUserModel!
                                                          .favourites
                                                          .add(data
                                                          .productId);
                                                    }
                                                    updatefavourites(
                                                        detail:
                                                        currentUserModel!);
                                                    print(
                                                        currentUserModel!
                                                            .favourites);
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    currentUserModel!
                                                        .favourites
                                                        .contains(data
                                                        .productId)
                                                        ? Icons.favorite
                                                        : Icons
                                                        .favorite_outline,
                                                    color:
                                                    ColorConst.sixth,
                                                  )))
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Text(
                                        data.name,
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
                                            data.prize.toString(),
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.w600,
                                                fontSize: width * 0.04),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  error: (error, stackTrace) =>
                                      Text(error.toString()),
                                  loading: () => CircularProgressIndicator(),
                                );
                          },
                        );
                },
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => CircularProgressIndicator(),
              )),
    );
  }
}
