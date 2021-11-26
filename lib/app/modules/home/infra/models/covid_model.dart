import 'dart:convert';

import 'package:digistarts_challenge/app/modules/home/domain/entities/covid_entity.dart';

class CovidModel extends CovidEntity {
  @override
  final String? city;
  @override
  final String? cityIbgeCode;
  @override
  final int? confirmed;
  @override
  final double? confirmedPer100kInhabitants;
  @override
  final String? date;
  @override
  final double? deathRate;
  @override
  final int? deaths;
  @override
  final int? estimatedPopulation;
  @override
  final int? estimatedPopulation2019;
  @override
  final bool? isLast;
  @override
  final int? orderForPlace;
  @override
  final String? placeType;
  @override
  final String? state;

  CovidModel({
    this.city,
    this.cityIbgeCode,
    this.confirmed,
    this.confirmedPer100kInhabitants,
    this.date,
    this.deathRate,
    this.deaths,
    this.estimatedPopulation,
    this.estimatedPopulation2019,
    this.isLast,
    this.orderForPlace,
    this.placeType,
    this.state,}
  );

  Map<String, dynamic> toMap() {
    return {
      'city': city,
      'cityIbgeCode': cityIbgeCode,
      'confirmed': confirmed,
      'confirmedPer100kInhabitants': confirmedPer100kInhabitants,
      'date': date,
      'deathRate': deathRate,
      'deaths': deaths,
      'estimatedPopulation': estimatedPopulation,
      'estimatedPopulation2019': estimatedPopulation2019,
      'isLast': isLast,
      'orderForPlace': orderForPlace,
      'placeType': placeType,
      'state': state,
    };
  }

  factory CovidModel.fromMap(Map<String, dynamic> map) {
    return CovidModel(
      city: map['city'],
      cityIbgeCode: map['cityIbgeCode'],
      confirmed: map['confirmed'],
      confirmedPer100kInhabitants: map['confirmedPer100kInhabitants'],
      date: map['date'],
      deathRate: map['deathRate'],
      deaths: map['deaths'],
      estimatedPopulation: map['estimatedPopulation'],
      estimatedPopulation2019: map['estimatedPopulation2019'],
      isLast: map['isLast'],
      orderForPlace: map['orderForPlace'],
      placeType: map['placeType'],
      state: map['state'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CovidModel.fromJson(String source) =>
      CovidModel.fromMap(json.decode(source));
}
