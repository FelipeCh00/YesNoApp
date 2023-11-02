import 'package:flutter/material.dart';

const Color _customColor = Color(0xFD043503);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
            'Colores deben estar entre 0 y ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor],
        //MODO OSCURO: 
        //brightness: Brightness.dark
        );

  }
}
