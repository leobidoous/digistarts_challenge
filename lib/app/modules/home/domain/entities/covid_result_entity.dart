import 'package:digistarts_challenge/app/modules/home/domain/entities/covid_entity.dart';

class CovidResultEntity {
  final int? count;
  final String? next;
  final String? previous;
  final List<CovidEntity> results;

  CovidResultEntity({
    this.count,
    this.next,
    this.previous,
    this.results = const [],
  });
}
