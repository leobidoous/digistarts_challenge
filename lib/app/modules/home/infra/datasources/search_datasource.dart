import 'package:digistarts_challenge/app/modules/home/infra/models/covid_result_model.dart';

abstract class SearchDatasource {
  Future<CovidResultModel> search(String query);
}
