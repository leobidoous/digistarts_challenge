import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'challenge_two_controller.dart';

class ChallengeTwoPage extends StatefulWidget {
  final String title;
  const ChallengeTwoPage({Key key, this.title = "ChallengeTwo"})
      : super(key: key);

  @override
  _ChallengeTwoPageState createState() => _ChallengeTwoPageState();
}

class _ChallengeTwoPageState
    extends ModularState<ChallengeTwoPage, ChallengeTwoController> {
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
