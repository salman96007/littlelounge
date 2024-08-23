
class ReviewModel{
  String name;
  String review;
  double rating;
  String ProductId;

  ReviewModel({
    required this.name,
    required this.review,
    required this.rating,
    required this.ProductId,
});
  factory ReviewModel.fromJson(Map<String,dynamic>json)=>ReviewModel(
  name: json["name"],
  review: json["review"],
  rating: json["rating"],
    ProductId: json["ProductId"],
  );

  Map<String,dynamic>toJson()=>{
    "name": name,
    "review": review,
    "rating": rating,
    "ProductId": ProductId,
  };

  ReviewModel copyWith({
    String?name,
    String?review,
    double?rating,
    String?ProductId
})
  {
    return ReviewModel(
        name: name??this.name,
        review: review??this.review,
        rating: rating??this.rating,
      ProductId: ProductId??this.ProductId,
    );

  }
}