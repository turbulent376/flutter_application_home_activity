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
      : id = UuidValue(json['id']),
        familyName = json['familyName'],
        members = List<User>.from(
            json['members'].map((model) => User.fromJson(model)).toList()),
        ownerId = UuidValue(json['ownerId']);

  Map<String, dynamic> toJson() => {
        'id': id.toString(),
        'familyName': familyName,
        'ownerId': ownerId,
      };
}
