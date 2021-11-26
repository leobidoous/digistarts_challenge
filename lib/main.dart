import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';
import 'app/core/utils/router_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load().catchError((onError) {
    log('Erro ao carregar as variáveis de ambiente: $onError');
  });
  return runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(
        routerObserver: RouterObserver(),
      ),
    ),
  );
}
