import 'package:dartz/dartz.dart';
import 'package:digistarts_challenge/app/modules/home/domain/repositories/covid_search_repository.dart';
import 'package:digistarts_challenge/app/modules/home/infra/models/covid_result_model.dart';

abstract class CovidSearchUsecase {
  Future<Either<Exception, CovidResultModel>> call(String search);
}

class CovidSearchUsercaseImpl implements CovidSearchUsecase {
  final CovidSearchRepository repository;

  const CovidSearchUsercaseImpl({required this.repository});
  @override
  Future<Either<Exception, CovidResultModel>> call(String search) async {
    return await repository.getCovidSearch(search);
  }
}
