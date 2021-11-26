import 'dart:convert';

import 'package:digistarts_challenge/app/modules/home/infra/models/covid_result_model.dart';
import 'package:dio/dio.dart';

class CovidSearchDatasource {
  final Dio client;

  CovidSearchDatasource({required this.client}) {
    client.options.baseUrl = 'https://api.brasil.io//v1/dataset';
    client.options.headers.addAll({
      'Authorization': 'Token 8b34c604f8c467c5950550f6870bde20dc5229fb',
    });
  }

  Future<CovidResultModel?> getCovidSearch(String search) async {
    try {
      final Response response = await client.get('/covid19/caso/data/');
      return CovidResultModel.fromMap(response.data);
    }  catch (e) {
      throw Exception('CovidSearchDatasource| getCovidSearch: $e');
    }
  }
}
