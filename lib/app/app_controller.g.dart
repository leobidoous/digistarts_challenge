// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$darkThemeModeAtom = Atom(name: '_AppControllerBase.darkThemeMode');

  @override
  bool get darkThemeMode {
    _$darkThemeModeAtom.reportRead();
    return super.darkThemeMode;
  }

  @override
  set darkThemeMode(bool value) {
    _$darkThemeModeAtom.reportWrite(value, super.darkThemeMode, () {
      super.darkThemeMode = value;
    });
  }

  @override
  String toString() {
    return '''
darkThemeMode: ${darkThemeMode}
    ''';
  }
}
