import 'navbar_top/navbar_top_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SharedModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $NavbarTopController,
      ];

  @override
  List<ModularRouter> get routers => [];

  static Inject get to => Inject<SharedModule>.of();
}
