import 'package:digistarts_challenge/app/shared/copyright/copyright_widget.dart';
import 'package:digistarts_challenge/app/shared/navbar_top/navbar_top_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'challenge_one_controller.dart';

class ChallengeOnePage extends StatefulWidget {
  final String title;

  const ChallengeOnePage({Key key, this.title = "Challenge One"})
      : super(key: key);

  @override
  _ChallengeOnePageState createState() => _ChallengeOnePageState();
}

class _ChallengeOnePageState
    extends ModularState<ChallengeOnePage, ChallengeOneController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstText = TextEditingController();
  final TextEditingController _secondText = TextEditingController();
  final TextEditingController _showResultText = TextEditingController();

  @override
  void dispose() {
    _firstText.dispose();
    _secondText.dispose();
    _showResultText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: NavbarTopWidget(widget.title).build(context),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Card(
                  elevation: 0.0,
                  color: Theme.of(context).cardColor,
                  margin: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 10.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 10.0),
                          _inputFirstValue(),
                          SizedBox(height: 15.0),
                          _inputSecondValue(),
                          SizedBox(height: 5.0),
                          _listHelperText(),
                          SizedBox(height: 10.0),
                          _btnShowResult(),
                          SizedBox(height: 10.0),
                          _showResult(),
                          SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            CopyrightWidget(),
          ],
        ),
      ),
    );
  }

  TextStyle _genericStyle() {
    return TextStyle(
      color: Theme.of(context).textTheme.headline1.color,
    );
  }

  InputDecoration _genericDecoration(String hint, String label) {
    return InputDecoration(
      hintStyle: _genericStyle(),
      labelStyle: _genericStyle(),
      hintText: hint,
      labelText: label,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
      contentPadding: EdgeInsets.all(10.0),
    );
  }

  Widget _inputFirstValue() {
    return TextFormField(
      controller: _firstText,
      validator: _validadeFirstInput,
      keyboardType: TextInputType.number,
      style: _genericStyle(),
      decoration: _genericDecoration("Enter a integer value", "First operand"),
    );
  }

  Widget _inputSecondValue() {
    return TextFormField(
      controller: _secondText,
      validator: _validadeSecondInput,
      keyboardType: TextInputType.number,
      style: _genericStyle(),
      decoration: _genericDecoration("Enter the value", "Second operand"),
    );
  }

  Widget _listHelperText() {
    return Text(
      "Enter a list of integer values, between -1000 to 1000, "
      "separated by commas and without spaces.",
    );
  }

  Widget _btnShowResult() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: FlatButton(
        onPressed: _onCalculate,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0),
        color: Theme.of(context).primaryColor,
        visualDensity: VisualDensity.compact,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Text(
          "Calculate",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _showResult() {
    return TextFormField(
      readOnly: true,
      controller: _showResultText,
      style: _genericStyle(),
      decoration: _genericDecoration("Ex.: 0000001111 (15)", "Calculated"),
    );
  }

  Future<void> _onCalculate() async {
    if (_formKey.currentState.validate()) {
      try {
        // int _firstValue;
        // int _secondValue;
        // if (controller.inputType == 0) {
        //   _firstValue =
        //       int.parse(int.parse(_firstText.text, radix: 2).toRadixString(10));
        //   _secondValue = int.parse(
        //       int.parse(_secondText.text, radix: 2).toRadixString(10));
        // } else if (controller.inputType == 1) {
        //   _firstValue = int.parse(_firstText.text);
        //   _secondValue = int.parse(_secondText.text);
        // }
        //
        // switch (controller.operationType) {
        //   case 0: // ADD
        //     final int result = _firstValue + _secondValue;
        //     _showResultText.text = "${result.toRadixString(2)} =($result)";
        //     break;
        //   case 1: // SUB
        //     final int result = _firstValue - _secondValue;
        //     _showResultText.text = "${result.toRadixString(2)} =($result)";
        //     break;
        //   case 2: // MUL
        //     final int result = _firstValue * _secondValue;
        //     _showResultText.text = "${result.toRadixString(2)} =($result)";
        //     break;
        //   case 3: // DIV
        //     final int result = (_firstValue / _secondValue).round();
        //     _showResultText.text = "${result.toRadixString(2)} =($result)";
        //     break;
        //   case 4: // PER
        //     final int result = _firstValue % _secondValue;
        //     _showResultText.text = "${result.toRadixString(2)} =($result)";
        //     break;
        //   default:
        //     break;
        // }
      } catch (e) {
        print("Erro ao calcular resultado: $e");
        _showResultText.text = "Erro ao calcular resultado";
      }
    } else {
      _showResultText.clear();
    }
  }

  // VALIDAÇÕES DE INPUT
  String _validadeFirstInput(String input) {
    if (input.trim().isEmpty) {
      return "Field can't empty";
    } else {
      try {
        final int integer = int.parse(input);
        if (integer > 1000) return "Value out of range (1-1000)";
        if (integer < 1) return "Value out of range (1-1000)";
      } on FormatException catch (e) {
        return "";
      }
    }

    return null;
  }

  String _validadeSecondInput(String input) {
    if (input.trim().isEmpty) {
      return "Field can't empty";
    } else {
      try {
        final int integer = int.parse(input);
        if (integer > 1000) return "Value out of range (-1000-1000)";
        if (integer < -1000) return "Value out of range (-1000-1000)";
      } on FormatException catch (e) {
        return "";
      }
    }

    return null;
  }
}
