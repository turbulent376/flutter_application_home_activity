import 'dart:typed_data';

import 'package:uuid/uuid.dart';
import 'package:flutter_application_1/homeactivity.dart';

class Family {
  final UuidValue id;
  final String familyName;
  final List<User> members;
  final UuidValue ownerId;

  Family(this.id, this.familyName, this.members, this.ownerId);

  Family.fromJson(Map<String, dynamic> json)
      : id = UuidValue(json['Id']),
        familyName = json['Name'],
        members = List<User>.from(
            json['Members'].map((model) => User.fromJson(model)).toList()),
        ownerId = UuidValue(json['Owner']);

  Map<String, dynamic> toJson() =>
      {'Id': id.toString(), 'Name': familyName, 'Owner': ownerId};
}
