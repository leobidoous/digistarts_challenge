import 'package:digistarts_challenge/app/shared/copyright/copyright_widget.dart';
import 'package:digistarts_challenge/app/shared/navbar_top/navbar_top_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: NavbarTopWidget(widget.title).build(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _flatButton(
                  () => Navigator.pushNamed(context, "/challenge_one"),
                  "Challenge One",
                ),
                _flatButton(
                  () => Navigator.pushNamed(context, "/challenge_two"),
                  "Challenge Two",
                ),
              ],
            ),
          ),
          CopyrightWidget(),
        ],
      ),
    );
  }

  Widget _flatButton(Function onPressed, String label) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: FlatButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Theme.of(context).cardColor,
        padding: EdgeInsets.symmetric(vertical: 25.0 ),
        visualDensity: VisualDensity.compact,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Text(
          label,
          style: TextStyle(
            color: Theme.of(context).textTheme.headline1.color,
          ),
        ),
      ),
    );
  }
}
