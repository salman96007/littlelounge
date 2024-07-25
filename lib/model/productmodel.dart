

class ProductModel{
  String name;
  double prize;
  List size;
  String description;
  List images;
  String image;
  DateTime uploadedTime;
  String ProductId;

  ProductModel({
    required this.name,
    required this.prize,
    required this.size,
    required this.description,
    required this.images,
    required this.image,
    required this.uploadedTime,
    required this.ProductId,
});
  factory ProductModel.fromJson(Map<String,dynamic>json)=>ProductModel(
      name: json["name"],
      prize: json["prize"],
      size: json["size"],
      description: json["description"],
      images: json["images"],
      image: json["image"],
      uploadedTime: json["uploadedTime"].toDate(),
      ProductId: json["ProductId"]
  );
  Map<String,dynamic>toJson()=>{
    "name":name,
    "prize":prize,
    "size":size,
    "description":description,
    "images":images,
    "image":image,
    "uploadedTime":uploadedTime,
    "ProductId":ProductId,
  };
  ProductModel copyWith({
    String?name,
    double?prize,
    List?size,
    String?description,
    List?images,
    String?image,
    DateTime?uploadedTime,
    String ?ProductId
})
  {
    return ProductModel(
        name: name??this.name,
        prize: prize??this.prize,
        size: size??this.size,
        description: description??this.description,
        images: images??this.images,
        image: image??this.image,
        uploadedTime: uploadedTime??this.uploadedTime as DateTime,
        ProductId: ProductId??this.ProductId
    );
  }

}