import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Olá, muito bom em te ter por aqui',
          style: Theme.of(context).textTheme.headline3,
        ),
        const Divider(),
        const SizedBox(height: 15),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Informe seu nome de usuário',
            labelText: 'Nome de usuário',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Informe sua senha',
            labelText: 'Senha',
          ),
        ),
        const SizedBox(height: 15),
        TextButton(
          child: Text('Login', style: Theme.of(context).textTheme.headline6),
          onPressed: () {
            Modular.to.pushReplacementNamed('/home/');
          },
        ),
      ],
    );
  }
}
