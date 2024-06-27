

  import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/core/providers/firebaseproviders.dart';
import 'package:littlelounge/features/home/screen/welcomepage.dart';
import 'package:littlelounge/model/usermodel.dart';
 final addUserRespositoryProvider = Provider((ref) => AdduserRespository(firebaseAuth: ref.watch(firebaseAuthProvider), firestore: ref.watch(firebaseProvider)),);
 class AdduserRespository {
     final FirebaseAuth _firebaseAuth;
     final FirebaseFirestore _firestore;
     AdduserRespository({required FirebaseAuth firebaseAuth,required FirebaseFirestore firestore}):_firebaseAuth =firebaseAuth,_firestore=firestore;
     CollectionReference get _user=>_firestore.collection("user");
     addAuth({ required UserModel detail}){
       _firebaseAuth.createUserWithEmailAndPassword(
           email:detail.email , password: detail.password
       ).then((value) {
         _user.add(detail.toJson()).then((value) => value.update(detail.copyWith(id: value.id).toJson()),);
       });

     }

     loginAuth({required String email, required String password,required BuildContext context}){
       _firebaseAuth.signInWithEmailAndPassword(
           email: email, password: password).then((value) => Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => WelcomPage()), (route)=>false));
     }

}


