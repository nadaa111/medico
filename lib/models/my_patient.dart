import 'package:grad_project/models/base_data.dart';

class MyPatient extends BaseData{
  static const String COLLECTION_NAME = "Patients";
  String id;
  String fullname;
  String username;
  String email;
  String phonenumber;
  String image;

  MyPatient(
      {required this.id,
      required this.email,
      required this.username,
      required this.fullname,
      required this.phonenumber,
      required this.image});

  MyPatient.fromjson(Map<String, dynamic> json)
      : this(
          id: json["id"],
          fullname: json["fullname"],
          username: json["username"],
          phonenumber: json["phonenumber"],
          email: json["email"],
          image: json["image"]
        );

  Map<String, dynamic> tojson() {
    return {
      "id": id,
      "fullname": fullname,
      "username": username,
      "phonenumber": phonenumber,
      "email": email,
      "image": image,
    };
  }
}
