import 'dart:typed_data';

import 'package:uuid/uuid.dart';
import 'package:flutter_application_1/homeactivity.dart';

class Activity {
  final UuidValue id;
  final UuidValue activityTypeId;
  final UuidValue ownerId;
  final UuidValue familyId;
  final DateTime startTime;
  final DateTime endTime;

  Activity(this.id, this.activityTypeId, this.ownerId, this.familyId,
      this.startTime, this.endTime);

  Activity.fromJson(Map<String, dynamic> json)
      : id = UuidValue(json['Id']),
        activityTypeId = UuidValue(json['Type']),
        ownerId = UuidValue(json['Owner']),
        familyId = UuidValue(json['Family']),
        startTime = DateTime.fromMillisecondsSinceEpoch(json['DateFrom']),
        endTime = DateTime.fromMillisecondsSinceEpoch(json['DateTo']);

  Map<String, dynamic> toJson() => {
        'Id': id.toString(),
        'Type': activityTypeId.toString(),
        'Owner': ownerId.toString(),
        'Family': familyId.toString(),
        'DateFrom': startTime.millisecondsSinceEpoch,
        'DateTo': endTime.millisecondsSinceEpoch
      };
}
