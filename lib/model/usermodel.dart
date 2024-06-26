

     class UserModel{

       String name;
       String password;
       String email;
       String id;

         UserModel({
         
         required this.name,
         required this.password,
         required this.email,
         required this.id,

     });
         factory UserModel.fromJson(Map<String,dynamic>json)=>UserModel(
             name: json["name"],
             password: json["password"],
             email: json["email"],
             id: json["id"]);

          Map<String,dynamic>toJson()=>{
          "name":name,
          "password": password,
          "email": email,
          "id": id

          };
          UserModel copyWith({
          String?name,
          String?password,
          String?email,
          String?id,

     })
          {
            return UserModel(
                name: name??this.name,
                password: password??this.password,
                email: email??this.email,
                id: email??this.id
            );
          }

}