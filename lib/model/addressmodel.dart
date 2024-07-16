
class Addressmodel{
  String name;
  String country;
  String city;
  String phonenumber;
  String address;

  Addressmodel({
    required this.name,
    required this.country,
    required this.city,
    required this.phonenumber,
    required this.address,
});
  factory Addressmodel.fromJson(Map<String,dynamic>json)=>Addressmodel(
      name:json ["name"],
      country:json ["country"],
      city:json ["city"],
      phonenumber:json ["phonenumber"],
      address:json ["address"]);
  Map<String,dynamic>toJson()=>{
    "name":name,
    "country":country,
    "city":city,
    "phonenumber":phonenumber,
    "address":address
  };
  Addressmodel copyWith({
    String?name,
    String?country,
    String?city,
    String?phonenumber,
    String?address,

}) {
    return Addressmodel(
        name: name ?? this.name,
        country: country ?? this.country,
        city: city ?? this.city,
        phonenumber: phonenumber ?? this.phonenumber,
        address: address ?? this.address);
  }

}