import 'package:dartz/dartz.dart';
import 'package:digistarts_challenge/app/modules/home/infra/models/covid_result_model.dart';

abstract class CovidSearchRepository {
  Future<Either<Exception, CovidResultModel>> getCovidSearch(String search);
}
