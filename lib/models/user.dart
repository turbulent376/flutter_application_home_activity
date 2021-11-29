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
      : id = UuidValue(json['id']),
        name = json['name'],
        surname = json['surname'],
        username = json['username'],
        familyId = UuidValue(json['familyId']);

  Map<String, dynamic> toJson() => {
        'id': id.toString(),
        'name': name,
        'surname': surname,
        'username': username,
        'familyId': familyId,
      };
}
