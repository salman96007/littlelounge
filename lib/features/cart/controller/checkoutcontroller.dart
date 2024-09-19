

      import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/features/cart/respository/checkoutrespository.dart';
import 'package:littlelounge/model/usermodel.dart';
final checkoutControllerRespository = Provider((ref) => checkoutController(respository: ref.watch(checkoutRespositoryProvaider)),);

class checkoutController{
         final checkoutRespository _respository;

         checkoutController({ required checkoutRespository respository}):_respository =respository;

         updateorderPage({required UserModel detail}){
           _respository.updateOrder(detail: detail);
         }

      }