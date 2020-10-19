import 'dart:convert';

import 'package:pet_assist/models/pet.dart';

class UserModel {
  String uid;
  String email;
  List<PetModel> pets;
  String username;
  UserModel({
    this.uid,
    this.email,
    this.pets,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'pets': pets?.map((x) => x?.toMap())?.toList(),
      'username': username,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserModel(
      uid: map['uid'],
      email: map['email'],
      pets: List<PetModel>.from(map['pets']?.map((x) => PetModel.fromMap(x))),
      username: map['username'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(uid: $uid, email: $email, pets: $pets, username: $username)';
  }
}
