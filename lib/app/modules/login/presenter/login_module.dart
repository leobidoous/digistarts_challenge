import 'dart:async';

import 'package:digistarts_challenge/app/shared/pages/wild_pages/not_authorized/not_authorized_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_Page.dart';
import 'login_store.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const LoginPage(),
      guards: [LoginRouteGuard()],
    ),
    WildcardRoute(child: (_, args) => const NotAuthorizedPage()),
  ];
}

class LoginRouteGuard extends RouteGuard {
  LoginRouteGuard() : super(redirectTo: '/home/');

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) async {
    return true;
  }
}
