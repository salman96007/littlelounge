

     class UserModel{

       String name;
       String password;
       String email;
       String id;
       String imageUrl;

         UserModel({
         
         required this.name,
         required this.password,
         required this.email,
         required this.id,
         required this.imageUrl,

     });
         factory UserModel.fromJson(Map<String,dynamic>json)=>UserModel(
             name: json["name"],
             password: json["password"],
             email: json["email"],
             id: json["id"],
             imageUrl: json["imageUrl"]
         );

          Map<String,dynamic>toJson()=>{
          "name":name,
          "password": password,
          "email": email,
          "id": id,
          "imageUrl": imageUrl

          };
          UserModel copyWith({
          String?name,
          String?password,
          String?email,
          String?id,
          String?imageUrl,

     })
          {
            return UserModel(
                name: name??this.name,
                password: password??this.password,
                email: email??this.email,
                id: id??this.id,
                imageUrl: imageUrl??this.imageUrl
            );
          }

}