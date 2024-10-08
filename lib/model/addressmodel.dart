
class Addressmodel{
  String name;
  String town;
  String city;
  String phonenumber;
  String address;

  Addressmodel({
    required this.name,
    required this.town,
    required this.city,
    required this.phonenumber,
    required this.address,
});
  factory Addressmodel.fromJson(Map<String,dynamic>json)=>Addressmodel(
      name:json ["name"],
      town:json ["town"],
      city:json ["city"],
      phonenumber:json ["phonenumber"],
      address:json ["address"]);
  Map<String,dynamic>toJson()=>{
    "name":name,
    "town":town,
    "city":city,
    "phonenumber":phonenumber,
    "address":address
  };
  Addressmodel copyWith({
    String?name,
    String?town,
    String?city,
    String?phonenumber,
    String?address,

}) {
    return Addressmodel(
        name: name ?? this.name,
        town: town ?? this.town,
        city: city ?? this.city,
        phonenumber: phonenumber ?? this.phonenumber,
        address: address ?? this.address);
  }

}