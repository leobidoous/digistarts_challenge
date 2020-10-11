import 'package:digistarts_challenge/app/app_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'navbar_top_controller.g.dart';

@Injectable()
class NavbarTopController = _NavbarTopControllerBase with _$NavbarTopController;

abstract class _NavbarTopControllerBase with Store {
  final AppController appController = Modular.get<AppController>();
}
