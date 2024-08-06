

class UserModel{

  String name;
  String password;
  String email;
  String id;
  String imageUrl;
  bool check;
  List Search;

  UserModel({

    required this.name,
    required this.password,
    required this.email,
    required this.id,
    required this.imageUrl,
    required this.check,
    required this.Search,

  });
  factory UserModel.fromJson(Map<String,dynamic>json)=>UserModel(
    name: json["name"],
    password: json["password"],
    email: json["email"],
    id: json["id"],
    imageUrl: json["imageUrl"],
    check: json["check"],
    Search: json["Search"],
  );

  Map<String,dynamic>toJson()=>{
    "name":name,
    "password": password,
    "email": email,
    "id": id,
    "imageUrl": imageUrl,
    "check": check,
    "Search": Search,

  };
  UserModel copyWith({
    String?name,
    String?password,
    String?email,
    String?id,
    String?imageUrl,
    bool?check,
    List?Search,

  })
  {
    return UserModel(
      name: name??this.name,
      password: password??this.password,
      email: email??this.email,
      id: id??this.id,
      imageUrl: imageUrl??this.imageUrl,
      check: check??this.check,
      Search: Search??this.Search,
    );
  }

}