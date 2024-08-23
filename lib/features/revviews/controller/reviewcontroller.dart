

    import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/features/revviews/respository/reviewrespositrory.dart';
import 'package:littlelounge/model/reviewmodel.dart';
   final reviewControllerProvider= Provider((ref) => reviewController(reviewRespository: ref.watch(reviewresProvider)),);
    class reviewController{
       final ReviewRespository _reviewRespository;
       reviewController({required ReviewRespository reviewRespository  }): _reviewRespository= reviewRespository;

       addreview( ReviewModel detail){
         _reviewRespository.addReview(data: detail);
       }
    }