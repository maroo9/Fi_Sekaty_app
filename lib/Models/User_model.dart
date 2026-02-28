import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String? phone;
  final String? role;
  final String? age;
  final double? rating;
  final String? carId;
  final String? carModel;
  final String? carPlate;
  final String? carType;
  final DateTime? birthDate;

  UserModel(
      this.id,
      this.name,
      this.email,
      this.phone,
      this.role,
      this.age,
      this.rating,
      this.carId,
      this.carModel,
      this.carPlate,
      this.carType,
      this.birthDate,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      json["id"],
      json["name"],
      json["email"],
      json["phone"],
      json["role"],
      json["age"],
      (json["rating"] as num?)?.toDouble(),
      json["carId"],
      json["carModel"],
      json["carPlate"],
      json["carType"],
      json["birthDate"] != null
          ? (json["birthDate"] as Timestamp).toDate()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "phone": phone,
      "role": role,
      "age": age,
      "rating": rating,
      "carId": carId,
      "carModel": carModel,
      "carPlate": carPlate,
      "carType": carType,
      "birthDate": birthDate != null
          ? Timestamp.fromDate(birthDate!)
          : null,
    };
  }
}