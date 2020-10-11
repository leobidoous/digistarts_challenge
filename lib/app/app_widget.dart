import 'package:digistarts_challenge/app/app_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  final AppController _controller = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return MaterialApp(
          navigatorKey: Modular.navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'Digistarts Challenge',
          themeMode:
              _controller.darkThemeMode ? ThemeMode.dark : ThemeMode.light,
          darkTheme: ThemeData(
            backgroundColor: Colors.black,
            cardColor: Colors.grey.shade800,
            primarySwatch: Colors.blue,
            textTheme: TextTheme(headline1: TextStyle(color: Colors.white)),
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          theme: ThemeData(
            backgroundColor: Colors.white,
            cardColor: Colors.grey.shade100,
            primarySwatch: Colors.blue,
            textTheme: TextTheme(headline1: TextStyle(color: Colors.black)),
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          initialRoute: '/',
          onGenerateRoute: Modular.generateRoute,
        );
      },
    );
  }
}
