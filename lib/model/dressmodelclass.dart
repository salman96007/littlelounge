
 class DressModel{
  String name;
  double prize;
  List size;
  String description;
  String image;
  String id;

  DressModel({
    required this.name,
    required this.prize,
    required this.size,
    required this.description,
    required this.image,
    required this.id,
 });
  factory DressModel.fromJson(Map<String,dynamic>json)=>DressModel(
      name: json["name"],
      prize: json["prize"],
      size: json["size"],
      description: json["description"],
      image: json["image"],
      id: json["id"]);
  Map<String,dynamic>toJson()=>{
    "name":name,
    "prize":prize,
    "size":size,
    "description":description,
    "image":image,
    "id":id,
  };
  DressModel copyWith({
    String?name,
    double?prize,
    List?size,
    String?description,
    String?image,
    String?id,
 })
  {
    return DressModel(
        name: name??this.name,
        prize: prize??this.prize,
        size: size??this.size,
        description: description??this.description,
        image: image??this.image,
        id: id??this.id);
  }
 }