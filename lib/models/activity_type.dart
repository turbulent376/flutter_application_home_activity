import 'dart:typed_data';

import 'package:uuid/uuid.dart';
import 'package:flutter_application_1/homeactivity.dart';

class ActivityType {
  final UuidValue id;
  final UuidValue familyId;
  final String activityName;
  final String activityDescription;

  ActivityType(
      this.id, this.familyId, this.activityName, this.activityDescription);

  ActivityType.fromJson(Map<String, dynamic> json)
      : id = UuidValue(json['Id']),
        familyId = UuidValue(json['Family']),
        activityName = json['Name'],
        activityDescription = json['Description'];

  Map<String, dynamic> toJson() => {
        'Id': id.toString(),
        'Family': familyId.toString(),
        'Name': activityName,
        'Description': activityDescription
      };
}
