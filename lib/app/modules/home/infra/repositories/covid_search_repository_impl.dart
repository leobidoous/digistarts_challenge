import 'package:dartz/dartz.dart';
import 'package:digistarts_challenge/app/modules/home/domain/repositories/covid_search_repository.dart';
import 'package:digistarts_challenge/app/modules/home/external/covid_search_datasource.dart';
import 'package:digistarts_challenge/app/modules/home/infra/models/covid_result_model.dart';

class CovidSearchRepositoryImpl implements CovidSearchRepository {
  final CovidSearchDatasource datasource;

  CovidSearchRepositoryImpl({required this.datasource});

  @override
  Future<Either<Exception, CovidResultModel>> getCovidSearch(
      String search) async {
    try {
      final CovidResultModel results = await datasource.getCovidSearch(search);
      return right(results);
    } catch (e) {
      return left(Exception('CovidSearchRepositoryImpl| getCovidSearch: $e'));
    }
  }
}
