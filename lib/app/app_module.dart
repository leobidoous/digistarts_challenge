import 'package:digistarts_challenge/app/shared/pages/splash/splash_page.dart';

import 'app_store.dart';
import 'modules/home/presenter/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/login/presenter/login_module.dart';
import 'shared/pages/wild_pages/not_found/not_found_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => SplashPage()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/home', module: HomeModule()),
    WildcardRoute(child: (_, args) => const NotFoundPage()),
  ];
}
