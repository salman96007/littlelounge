

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


   }