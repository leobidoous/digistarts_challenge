import 'package:digistarts_challenge/app/app_widget.dart';
import 'package:digistarts_challenge/app/modules/challenge_one/challenge_one_module.dart';
import 'package:digistarts_challenge/app/modules/challenge_two/challenge_two_module.dart';
import 'package:digistarts_challenge/app/modules/home/home_module.dart';
import 'package:digistarts_challenge/app/shared/shared_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter(
          "/shared",
          module: SharedModule(),
          transition: TransitionType.rightToLeft,
        ),
        ModularRouter(
          "/challenge_one",
          module: ChallengeOneModule(),
          transition: TransitionType.rightToLeft,
        ),
        ModularRouter(
          "/challenge_two",
          module: ChallengeTwoModule(),
          transition: TransitionType.rightToLeft,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
