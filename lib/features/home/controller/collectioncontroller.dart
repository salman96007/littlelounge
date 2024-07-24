

    import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/features/home/repository/collectionrespository.dart';
import 'package:littlelounge/model/categorymodel.dart';
import 'package:littlelounge/model/dressmodelclass.dart';
   final collectionControllProvider = Provider( (ref) => dressController(respository: ref.watch(collectionRespositoryProvider)));
   final StreamCollection = StreamProvider( (ref) => ref.watch(collectionControllProvider).menControl(),);

class dressController{
      final collectionResposiyory _resposiyory;
      dressController({required collectionResposiyory respository }):_resposiyory=respository;

      addcol({required DressModel detail}){
        _resposiyory.addCollection(detail: detail);
      }
      Stream<List<categorymodel>> menControl(){
        return  _resposiyory.menStream();
      }
    }
   