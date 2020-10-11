import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'navbar_top_controller.g.dart';

@Injectable()
class NavbarTopController = _NavbarTopControllerBase with _$NavbarTopController;

abstract class _NavbarTopControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
