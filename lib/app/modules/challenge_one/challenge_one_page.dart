import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'challenge_one_controller.dart';

class ChallengeOnePage extends StatefulWidget {
  final String title;
  const ChallengeOnePage({Key key, this.title = "ChallengeOne"})
      : super(key: key);

  @override
  _ChallengeOnePageState createState() => _ChallengeOnePageState();
}

class _ChallengeOnePageState
    extends ModularState<ChallengeOnePage, ChallengeOneController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
