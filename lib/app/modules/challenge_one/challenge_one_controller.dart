import 'dart:math';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'challenge_one_controller.g.dart';

@Injectable()
class ChallengeOneController = _ChallengeOneControllerBase
    with _$ChallengeOneController;

abstract class _ChallengeOneControllerBase with Store {
  String onGenerateRandomNumbers(int limit) {
    String _randomNumbers = "";
    var _random = new Random();
    for (var i = 0; i < limit; i++) {
      final int _randomNumber = _random.nextInt(limit + 1);
      if (i + 1 != limit) {
        _randomNumbers += "${_randomNumber.toString()},";
      } else {
        _randomNumbers += "${_randomNumber.toString()}";
      }
    }
    return _randomNumbers;
  }

  String onSortList(List<String> numbers) {
    String _numbersSorted = "";
    List<int> _listNumbers = List<int>();
    Set<int> _setNumbers = Set<int>();
    numbers.forEach((number) {
      if (number.trim().isNotEmpty) _listNumbers.add(int.parse(number));
    });
    _listNumbers.sort();
    _listNumbers.forEach((number) {
      _setNumbers.add(number);
    });
    _setNumbers.forEach((element) {
      if (element != _setNumbers.last) {
        _numbersSorted += "$element\n";
      } else {
        _numbersSorted += "$element";
      }
    });

    return _numbersSorted;
  }
}
