

  import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/core/providers/firebaseproviders.dart';

import '../../../model/reviewmodel.dart';
 final reviewresProvider = Provider((ref) => ReviewRespository(firestore: ref.watch(firebaseProvider)),);
class ReviewRespository{
     final FirebaseFirestore _firestore;
     ReviewRespository({required FirebaseFirestore firestore}):_firestore=firestore;
     CollectionReference get _review=> _firestore.collection("review");
     addReview({required ReviewModel data}){
       _review.add(data.toJson());
     }
  }