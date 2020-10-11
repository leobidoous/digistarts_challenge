import 'package:flutter_modular/flutter_modular.dart';

import 'challenge_one_controller.dart';
import 'challenge_one_page.dart';

class ChallengeOneModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => ChallengeOneController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => ChallengeOnePage()),
      ];

  static Inject get to => Inject<ChallengeOneModule>.of();
}
