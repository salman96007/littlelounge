
class categorymodel{
  String name;
  String CategoryId;

  categorymodel({
    required this.name,
    required this.CategoryId
  });

  factory categorymodel.fromJson(Map<String,dynamic>json)=>categorymodel(
    name: json["name"],
    CategoryId: json['CategoryId'],
  );
  Map<String,dynamic>toJson()=>{
    "name":name,
    "CategoryId" : CategoryId,
  };
  categorymodel copyWith({
    String?name,
    String?CategoryId,
  })
  {
    return categorymodel(
        name: name??this.name,
        CategoryId: CategoryId??this.CategoryId
    );
  }
}