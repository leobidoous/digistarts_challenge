import 'copyright/copyright_controller.dart';
import 'navbar_top/navbar_top_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SharedModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NavbarTopController()),
        Bind((i) => CopyrightController()),
      ];

  @override
  List<ModularRouter> get routers => [];

  static Inject get to => Inject<SharedModule>.of();
}
