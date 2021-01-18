import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

final providerMenu = _ProviderMenu();

class _ProviderMenu {
  List<dynamic> options = [];

  _ProviderMenu() {}

  Future<List<dynamic>> loadData() async {
    final String data = await rootBundle.loadString('data/opts.json');
    Map dataMap = json.decode(data);
    options = dataMap['rutas'];
    return options;
  }
}
