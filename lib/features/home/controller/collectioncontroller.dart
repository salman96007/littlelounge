import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/features/home/repository/collectionrespository.dart';
import 'package:littlelounge/features/home/screen/homepage.dart';
import 'package:littlelounge/features/home/screen/welcomepage.dart';
import 'package:littlelounge/main.dart';
import 'package:littlelounge/model/categorymodel.dart';
import 'package:littlelounge/model/productmodel.dart';

import '../../../model/usermodel.dart';

final collectionControllProvider = Provider((ref) =>
    dressController(respository: ref.watch(collectionRespositoryProvider)));
final StreamCollection = StreamProvider(
  (ref) => ref.watch(collectionControllProvider).menControl(),
);
final StreamProduct = StreamProvider(
  (ref) =>
      ref.watch(collectionControllProvider).productStream(),
);

final StreamProduct1 = StreamProvider.family((ref,String productId) =>
    ref.watch(collectionControllProvider).productStream1(productId:productId));

final userStreamProvider = StreamProvider((ref) =>
    ref.watch(collectionControllProvider).userStream());

class dressController {
  final collectionResposiyory _resposiyory;
  dressController({required collectionResposiyory respository})
      : _resposiyory = respository;

  Stream<List<categorymodel>> menControl() {
    return _resposiyory.menStream();
  }

  Stream<List<ProductModel>> productStream() {
    return _resposiyory.productStream();
  }

  Stream<ProductModel> productStream1({required String productId})  {

    return _resposiyory.productStream1(productId: productId);
  }


  Stream<UserModel> userStream()  {

    return _resposiyory.userStream();
  }
}
