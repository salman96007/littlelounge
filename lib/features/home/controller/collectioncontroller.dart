

    import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/features/home/repository/collectionrespository.dart';
import 'package:littlelounge/model/categorymodel.dart';
import 'package:littlelounge/model/productmodel.dart';
   final collectionControllProvider = Provider( (ref) => dressController(respository: ref.watch(collectionRespositoryProvider)));
   final StreamCollection = StreamProvider( (ref) => ref.watch(collectionControllProvider).menControl(),);
   final StreamProduct =StreamProvider.family((ref,String CategoryId) => ref.watch(collectionControllProvider).productStream(CategoryId),);

class dressController{
      final collectionResposiyory _resposiyory;
      dressController({required collectionResposiyory respository }):_resposiyory=respository;

      Stream<List<categorymodel>> menControl(){
        return  _resposiyory.menStream();
      }
      Stream<List<ProductModel>>productStream(CategoryId){
       return _resposiyory.productStream(CategoryId);
      }
      favupdate(String id,ProductModel detail){
        return _resposiyory.updatefav(id, detail);
      }




    }
   