import 'package:digistarts_challenge/app/shared/navbar_top/navbar_top_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NavbarTopWidget extends StatelessWidget {
  final title;

  NavbarTopWidget(this.title);

  @override
  Widget build(BuildContext context) {
    final NavbarTopController _controller = NavbarTopController();
    final String _routeName = ModalRoute.of(context).settings.name;
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 50.0),
      child: Observer(
        builder: (context) {
          return AppBar(
            elevation: 0.0,
            backgroundColor: Theme.of(context).cardColor,
            title: Text(
              title,
              style: TextStyle(
                color: Theme.of(context).textTheme.headline1.color,
              ),
            ),
            brightness: _controller.appController.darkThemeMode
                ? Brightness.dark
                : Brightness.light,
            leading: _routeName == "/"
                ? null
                : IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    color: Theme.of(context).textTheme.headline1.color,
                    onPressed: () => Navigator.pop(context),
                  ),
            actions: [
              IconButton(
                icon: Icon(
                  _controller.appController.darkThemeMode
                      ? Icons.brightness_4_rounded
                      : Icons.brightness_3_rounded,
                ),
                color: Theme.of(context).textTheme.headline1.color,
                onPressed: () {
                  _controller.appController.darkThemeMode =
                      !_controller.appController.darkThemeMode;
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
