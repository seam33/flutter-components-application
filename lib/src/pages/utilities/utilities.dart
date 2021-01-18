import 'package:flutter/material.dart';

final Map<String, IconData> _listIcons = {
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'keyboard_arrow_right': Icons.keyboard_arrow_right,
};

final Map<String, Color> _listColors = {
  'black': Colors.black,
  'green': Colors.green,
  'blue': Colors.blue,
  'red': Colors.red,
  'yellow': Colors.yellow,
};

Icon getIcon(String iconName, String colorName) {
  return Icon(_listIcons[iconName], color: _listColors[colorName]);
}

Color getColor(String colorName) {
  return _listColors[colorName];
}
