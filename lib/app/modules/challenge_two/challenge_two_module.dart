import 'challenge_two_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'challenge_two_page.dart';

class ChallengeTwoModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => ChallengeTwoController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => ChallengeTwoPage()),
      ];

  static Inject get to => Inject<ChallengeTwoModule>.of();
}
