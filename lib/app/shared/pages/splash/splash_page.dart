import 'dart:ui';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key) {
    Future.delayed(const Duration(seconds: 3), () {
      Modular.to.pushReplacementNamed('/login/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: NetworkImage(
            'https://picsum.photos/2400/1500',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[Center(child: CircularProgressIndicator())],
        ),
      ),
    );
  }
}
