import 'package:flutter/material.dart';

class NotAuthorizedPage extends StatefulWidget {
  const NotAuthorizedPage({Key? key}) : super(key: key);

  @override
  _NotAuthorizedPageState createState() => _NotAuthorizedPageState();
}

class _NotAuthorizedPageState extends State<NotAuthorizedPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Not Authorized Page.')));
  }
}
