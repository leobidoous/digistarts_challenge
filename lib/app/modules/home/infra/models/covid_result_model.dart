import 'dart:convert';

import 'package:digistarts_challenge/app/modules/home/domain/entities/covid_result_entity.dart';
import 'package:digistarts_challenge/app/modules/home/infra/models/covid_model.dart';

class CovidResultModel extends CovidResultEntity {
  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final List<CovidModel> results;

  CovidResultModel({
    this.count,
    this.next,
    this.previous,
    this.results = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': (results).map((x) => x.toMap()).toList(),
    };
  }

  factory CovidResultModel.fromMap(Map<String, dynamic> map) {
    return CovidResultModel(
      count: map['count'],
      next: map['next'],
      previous: map['previous'],
      results: List<CovidModel>.from(
        map['results']?.map((x) => CovidModel.fromMap(x)),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CovidResultModel.fromJson(String source) => CovidResultModel.fromMap(
        json.decode(source),
      );
}
