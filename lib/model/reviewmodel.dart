
class ReviewModel{
  String name;
  String review;
  double rating;

  ReviewModel({
    required this.name,
    required this.review,
    required this.rating,
});
  factory ReviewModel.fromJson(Map<String,dynamic>json)=>ReviewModel(
  name: json["name"],
  review: json["review"],
  rating: json["rating"],
  );

  Map<String,dynamic>toJson()=>{
    "name": name,
    "review": review,
    "rating": rating,
  };

  ReviewModel copyWith({
    String?name,
    String?review,
    double?rating
})
  {
    return ReviewModel(
        name: name??this.name,
        review: review??this.review,
        rating: rating??this.rating
    );

  }
}