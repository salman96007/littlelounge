

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/core/providers/firebaseproviders.dart';
import 'package:littlelounge/features/auth/screen/loginpage.dart';
import 'package:littlelounge/features/home/screen/homepage.dart';
import 'package:littlelounge/main.dart';
import 'package:littlelounge/model/categorymodel.dart';
import 'package:littlelounge/model/usermodel.dart';

import '../../../model/productmodel.dart';

import '../../auth/respository/authrespository.dart';
import '../screen/welcomepage.dart';

final collectionRespositoryProvider = Provider(
      (ref) => collectionResposiyory(firestore: ref.watch(firebaseProvider)),
);

class collectionResposiyory {
  final FirebaseFirestore _firestore;
  collectionResposiyory({required FirebaseFirestore firestore})
      : _firestore = firestore;

  CollectionReference get _category => _firestore.collection("category");
  CollectionReference get _product => _firestore.collection("product");
  CollectionReference get _user => _firestore.collection("user");

  Stream<List<categorymodel>> menStream() {
    return _category.snapshots().map((event) => event.docs
        .map(
          (e) => categorymodel.fromJson(
        e.data() as Map<String, dynamic>,
      ),
    )
        .toList());
  }

  Stream<List<ProductModel>> productStream(CategoryIdData) {
    return _product.where('categoryId',isEqualTo:CategoryIdData).snapshots().map(
          (event) => event.docs
          .map(
            (e) => ProductModel.fromJson(e.data() as Map<String, dynamic>),
      )
          .toList(),
    );
  }

  Stream<ProductModel> productStream1({required String productId}) {
    return _product
        .doc(productId)
        .snapshots()
        .map(
          (event) => ProductModel.fromJson(event.data() as Map<String, dynamic>),
    );
  }

  Stream<UserModel> userStream() {
    return _user
        .doc(currentUserModel!.id)
        .snapshots()
        .map(
          (event) =>
          UserModel.fromJson(event.data() as Map<String, dynamic>),
    );
  }


}
