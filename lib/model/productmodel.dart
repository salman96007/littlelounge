
class ProductModel{
  String name;
  double prize;
  List size;
  String description;
  List images;
  DateTime uploadedTime;
  String productId;
  String categoryId;

  ProductModel({
    required this.name,
    required this.prize,
    required this.size,
    required this.description,
    required this.images,
    required this.uploadedTime,
    required this.productId,
    required this.categoryId,
  });
  factory ProductModel.fromJson(Map<String,dynamic>json)=>ProductModel(
    name: json["name"],
    prize: json["prize"].toDouble(),
    size: json["size"],
    description: json["description"],
    images: json["images"],
    uploadedTime: json["uploadedTime"].toDate(),
    productId: json["productId"],
    categoryId: json["categoryId"],
  );
  Map<String,dynamic>toJson()=>{
    "name":name,
    "prize":prize,
    "size":size,
    "description":description,
    "images":images,
    "uploadedTime":uploadedTime,
    "productId":productId,
    "categoryId":categoryId,

  };
  ProductModel copyWith({
    String?name,
    double?prize,
    List?size,
    String?description,
    List?images,
    DateTime?uploadedTime,
    String ?productId,
    String ?categoryId,
  })
  {
    return ProductModel(
      name: name??this.name,
      prize: prize??this.prize,
      size: size??this.size,
      description: description??this.description,
      images: images??this.images,
      uploadedTime: uploadedTime??this.uploadedTime as DateTime,
      productId: productId??this.productId,
      categoryId: categoryId??this.categoryId,
    );
  }

}