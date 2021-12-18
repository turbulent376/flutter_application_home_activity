import 'dart:typed_data';

import 'package:uuid/uuid.dart';
import 'package:flutter_application_1/homeactivity.dart';

class User {
  final UuidValue id;
  final String name;
  final String surname;
  final String username;
  UuidValue? familyId;

  User(this.id, this.name, this.surname, this.username);

  User.fromJson(Map<String, dynamic> json)
      : id = UuidValue(json['Id']),
        name = json['Name'],
        surname = json['Surname'],
        username = json['Username'],
        familyId = UuidValue(json['Family']);

  Map<String, dynamic> toJson() => {
        'Id': id.toString(),
        'Name': name,
        'Surname': surname,
        'Username': username,
        'Family': familyId,
      };
}
