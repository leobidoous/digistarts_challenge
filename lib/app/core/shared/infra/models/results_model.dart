import 'dart:convert';

import 'package:digistarts_challenge/app/core/shared/domain/entities/results_entity.dart';

class ResultModel extends ResultEntity {
  ResultModel({
    int? count,
    String? next,
    String? previous,
  });

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
    };
  }

  factory ResultModel.fromMap(Map<String, dynamic> map) {
    return ResultModel(
      count: map['count'],
      next: map['next'],
      previous: map['previous'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultModel.fromJson(String source) =>
      ResultModel.fromMap(json.decode(source));
}
