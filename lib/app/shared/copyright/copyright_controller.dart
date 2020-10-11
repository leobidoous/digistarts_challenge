import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'copyright_controller.g.dart';

@Injectable()
class CopyrightController = _CopyrightControllerBase with _$CopyrightController;

abstract class _CopyrightControllerBase with Store {

}
