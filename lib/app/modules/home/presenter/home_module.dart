import 'package:digistarts_challenge/app/modules/home/domain/usecases/covid_search_usecase.dart';
import 'package:digistarts_challenge/app/modules/home/external/covid_search_datasource.dart';
import 'package:digistarts_challenge/app/modules/home/infra/repositories/covid_search_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';
import 'home_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => Dio()),
    Bind.lazySingleton(
      (i) => HomeStore(
        usecase: i.get<CovidSearchUsercaseImpl>(),
      ),
    ),
    Bind.lazySingleton((i) => CovidSearchDatasource(client: i.get<Dio>())),
    Bind.lazySingleton(
      (i) => CovidSearchRepositoryImpl(
        datasource: i.get<CovidSearchDatasource>(),
      ),
    ),
    Bind.lazySingleton(
      (i) => CovidSearchUsercaseImpl(
        repository: i.get<CovidSearchRepositoryImpl>(),
      ),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  ];
}
