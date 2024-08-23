
class UserModel{

  String name;
  String password;
  String email;
  String id;
  String imageUrl;
  bool check;
  List Search;
  List address;
  List favourites;
  List addTOCart;
  List order;

  UserModel({

    required this.name,
    required this.password,
    required this.email,
    required this.id,
    required this.imageUrl,
    required this.check,
    required this.Search,
    required this.address,
    required this.favourites,
    required this.addTOCart,
    required this.order

  });
  factory UserModel.fromJson(Map<String,dynamic>json)=>UserModel(
    name: json["name"],
    password: json["password"],
    email: json["email"],
    id: json["id"],
    imageUrl: json["imageUrl"],
    check: json["check"],
    Search: json["Search"],
    address: json["address"],
    favourites: json["favourites"],
    addTOCart: json["addTOCart"],
    order: json["order"],
  );

  Map<String,dynamic>toJson()=>{
    "name":name,
    "password": password,
    "email": email,
    "id": id,
    "imageUrl": imageUrl,
    "check": check,
    "Search": Search,
    "address": address,
    "favourites": favourites,
    "addTOCart": addTOCart,
    "order":order,

  };
  UserModel copyWith({
    String?name,
    String?password,
    String?email,
    String?id,
    String?imageUrl,
    bool?check,
    List?Search,
    List?address,
    List?favourites,
    List?addTOCart,
    List?order

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
      address: address??this.address,
      favourites: favourites??this.favourites,
      addTOCart: addTOCart??this.addTOCart,
      order: order??this.order
    );
  }

}