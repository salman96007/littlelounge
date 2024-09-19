
    import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/core/providers/firebaseproviders.dart';
import 'package:littlelounge/features/auth/screen/loginpage.dart';
import 'package:littlelounge/model/usermodel.dart';
 final checkoutRespositoryProvaider= Provider((ref) => checkoutRespository(firestore: ref.watch(firebaseProvider)),);
class checkoutRespository{
      final FirebaseFirestore _firestore;
      checkoutRespository({required FirebaseFirestore firestore}):_firestore=firestore;

      CollectionReference get _user => _firestore.collection("user");

      updateOrder({required UserModel detail}){
        _user.doc(currentUSerId).update(detail.toJson());
      }
    }