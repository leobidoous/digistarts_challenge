import 'package:dartz/dartz.dart';
import 'package:digistarts_challenge/app/modules/home/domain/entities/covid_result_entity.dart';
import 'package:digistarts_challenge/app/modules/home/domain/usecases/covid_search_usecase.dart';
import 'package:digistarts_challenge/app/modules/home/infra/models/covid_result_model.dart';
import 'package:flutter_triple/flutter_triple.dart';

class HomeStore extends NotifierStore<Exception, CovidResultEntity> {
  final CovidSearchUsecase usecase;

  HomeStore({required this.usecase}) : super(CovidResultEntity());

  Future<void> getCovidSearch({required String search}) async {
    setLoading(true);
    final Either<Exception, CovidResultModel> option = await usecase(search);
    option.fold((l) => setError(l), (r) => update(r));
    setLoading(false);
  }
}
