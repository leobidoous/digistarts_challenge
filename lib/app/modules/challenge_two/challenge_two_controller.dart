import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'challenge_two_controller.g.dart';

@Injectable()
class ChallengeTwoController = _ChallengeTwoControllerBase
    with _$ChallengeTwoController;

abstract class _ChallengeTwoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
