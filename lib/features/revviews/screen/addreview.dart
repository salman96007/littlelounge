import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:littlelounge/features/revviews/controller/reviewcontroller.dart';
import 'package:littlelounge/features/revviews/screen/reviews.dart';
import 'package:littlelounge/model/reviewmodel.dart';

import '../../../main.dart';
double a = 0;

class AddReview extends ConsumerStatefulWidget {
   final String id;
  const AddReview({super.key,
    required this.id
  });

  @override
  ConsumerState<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends  ConsumerState<AddReview> {
  TextEditingController nameController=TextEditingController();
  TextEditingController experience=TextEditingController();

   addreviewdata(){
     ref.watch(reviewControllerProvider).addreview(ReviewModel(
         name: nameController.text,
         review: experience.text,
         rating: a,
         ProductId: widget.id));

   }

  @override
  Widget build(BuildContext context) {


  
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: ColorConst.primaryColor,
        title: Text("Add Review",style: TextStyle(color: ColorConst.secondary,fontSize: width*0.06,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: SizedBox(
              width: width*0.90,
              child: TextFormField(
                controller: nameController,
                maxLines: 1,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                style: TextStyle(fontSize: width * 0.05),
                decoration: InputDecoration(
                  labelText: "name",
                  labelStyle: TextStyle(
                      fontSize: width*0.05,
                      color: ColorConst.secondary,
                      fontWeight: FontWeight.bold
                  ),
                  hintText: "Describe your experience?",
                  hintStyle: TextStyle(
                      fontSize: width * 0.035,
                      color: ColorConst.eighth),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(width * 0.05)),
                  filled: true,
                  fillColor: ColorConst.eighth.withOpacity(0.08),
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: width*0.90,
              child: TextFormField(
                controller: experience,
                maxLines: 8,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.next,
                style: TextStyle(fontSize: width * 0.05),
                decoration: InputDecoration(
                  labelText: "How was your experience ?",
                  labelStyle: TextStyle(
                    fontSize: width*0.05,
                    color: ColorConst.secondary,
                    fontWeight: FontWeight.bold
                  ),
                  hintText: "Describe your experience?",
                  hintStyle: TextStyle(
                      fontSize: width * 0.035,
                      color: ColorConst.eighth),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(width * 0.05)),
                  filled: true,
                  fillColor: ColorConst.eighth.withOpacity(0.08),
                ),
              ),
            ),
          ),
          Column(
            children: [
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star_rounded,
                  color: Colors.green,
                ),
                onRatingUpdate: (rating){
                  print(rating);
                  a= rating;
                  setState(() {

                  });
                },
              ),
              Text(a.toString()),
            ],
          ),
          InkWell(
            onTap: () {
              addreviewdata();
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ReviewPage(),), (route) => false,);
            },
            child: Container(
              alignment: Alignment.center,
              height: height*0.060,
              width: width*0.65,
              child: Text("Submit Review",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.05),),
              decoration: BoxDecoration(
                  color: ColorConst.thirdColor,
                  borderRadius: BorderRadius.circular(width*0.03)
              ),
            ),
          )
        ],
      ),
    );
  }
}

