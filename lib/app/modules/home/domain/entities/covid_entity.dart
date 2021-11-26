class CovidEntity {
  final String? city;
  final String? cityIbgeCode;
  final int? confirmed;
  final double? confirmedPer100kInhabitants;
  final String? date;
  final double? deathRate;
  final int? deaths;
  final int? estimatedPopulation;
  final int? estimatedPopulation2019;
  final bool? isLast;
  final int? orderForPlace;
  final String? placeType;
  final String? state;

  CovidEntity({
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
    this.state,
  });
}
