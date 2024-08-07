import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/core/providers/firebaseproviders.dart';
import 'package:littlelounge/model/categorymodel.dart';

import '../../../model/productmodel.dart';
  final collectionRespositoryProvider = Provider( (ref) => collectionResposiyory(firestore: ref.watch(firebaseProvider)),);
class collectionResposiyory{
  final FirebaseFirestore _firestore;
  collectionResposiyory({required FirebaseFirestore firestore}):_firestore=firestore;

  CollectionReference get _collection => _firestore.collection("category");

  Stream<List<categorymodel>> menStream(){
    return _collection.snapshots().map( (event) => event.docs.map( (e) => categorymodel.fromJson(e.data() as Map<String,dynamic>,),).toList());
  }
  Stream<List<ProductModel>>productStream(CategoryId){
    return _collection.doc(CategoryId).collection("product").snapshots().map((event) => event.docs.map((e) =>ProductModel.fromJson(e.data() as Map<String,dynamic>),).toList(),);
  }
}