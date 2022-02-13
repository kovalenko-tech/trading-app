import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

abstract class AppThemeColorScheme extends ColorScheme {
  const AppThemeColorScheme({
    required Brightness brightness,
    required this.base100,
    required this.base200,
    required this.base500,
    required this.black,
    required this.purple500,
    required this.red400,
    required this.red500,
    required this.sunGold400,
    required this.sunGold500,
    required this.white,
  }) : super(
          brightness: brightness,
          primary: white,
          secondary: Colors.black,
          surface: Colors.black,
          background: Colors.black,
          error: Colors.black,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.black,
        );

  static _DarkColorScheme dark = _DarkColorScheme();
  static _LightColorScheme light = _LightColorScheme();

  final Color base100;
  final Color base200;
  final Color base500;
  final Color black;
  final Color purple500;
  final Color red400;
  final Color red500;
  final Color sunGold400;
  final Color sunGold500;
  final Color white;
}

class _DarkColorScheme extends AppThemeColorScheme {
  _DarkColorScheme()
      : super(
          brightness: Brightness.dark,
          base100: HexColor('#A19DAA'),
          base200: HexColor('#8C8797'),
          base500: HexColor('#504C57'),
          black: HexColor('#000000'),
          purple500: HexColor('#A824EA'),
          red400: HexColor('#D93636'),
          red500: HexColor('#EA2323'),
          sunGold400: HexColor('#F2BC3D'),
          sunGold500: HexColor('#392904'),
          white: HexColor('#FFFFFF'),
        );
}

class _LightColorScheme extends AppThemeColorScheme {
  _LightColorScheme()
      : super(
          brightness: Brightness.light,
          base100: HexColor('#A19DAA'),
          base200: HexColor('#8C8797'),
          base500: HexColor('#504C57'),
          black: HexColor('#000000'),
          purple500: HexColor('#A824EA'),
          red400: HexColor('#D93636'),
          red500: HexColor('#EA2323'),
          sunGold400: HexColor('#F2BC3D'),
          sunGold500: HexColor('#392904'),
          white: HexColor('#FFFFFF'),
        );
}
