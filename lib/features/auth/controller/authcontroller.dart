

   import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/features/auth/respository/authrespository.dart';
import 'package:littlelounge/model/usermodel.dart';
  final ControllerProvider = Provider((ref) => AuthController(adduserRespository: ref.watch(addUserRespositoryProvider)),);
class AuthController{
    final AdduserRespository _adduserRespository;
    AuthController({required AdduserRespository adduserRespository}):_adduserRespository=adduserRespository;

    addUser({required UserModel detail}){
      _adduserRespository.addAuth(detail: detail);
    }
    authLogin({required String email, required String password,required BuildContext context}){
      _adduserRespository.loginAuth(email:email, password: password, context: context,);
    }

    google(BuildContext context){

      _adduserRespository.signInWithGoogle(context: context);

    }
    get({required String email,required String password, required context}){
      _adduserRespository.loginAuth(email: email, password: password, context: context);
    }
    userData({required String imageUrl}){
      _adduserRespository.updateData(imageUrl);
    }
    updatepassword({required String email,required String password,}){
      _adduserRespository.updatepassword(email, password);
    }


}