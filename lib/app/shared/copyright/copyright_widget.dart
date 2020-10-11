import 'package:flutter/material.dart';

class CopyrightWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 2.0,
      child: Text(
        "Desenvolvido por @leobidoous ® ${DateTime.now().year}",
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Theme.of(context).textTheme.headline1.color,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
