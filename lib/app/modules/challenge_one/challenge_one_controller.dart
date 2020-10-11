import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'challenge_one_controller.g.dart';

@Injectable()
class ChallengeOneController = _ChallengeOneControllerBase
    with _$ChallengeOneController;

abstract class _ChallengeOneControllerBase with Store {

}
