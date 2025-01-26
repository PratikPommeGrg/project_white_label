import 'package:flutter/material.dart';

class ColorModel {
  final Color? primaryColor;
  final Color? secondaryColor;
  final Color? neutralColor;

  ColorModel({this.primaryColor, this.secondaryColor, this.neutralColor});

  // Factory method to create a ColorModel object from JSON
  factory ColorModel.fromJson(Map<String, dynamic> json) {
    return ColorModel(
      primaryColor: _hexToColor(json['primaryColor']),
      secondaryColor: _hexToColor(json['secondaryColor']),
      neutralColor: _hexToColor(json['neutralColor']),
    );
  }

  // Helper method to convert a hex color string to a Color object
  static Color _hexToColor(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor'; // Add opacity if missing
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
