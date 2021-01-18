import 'package:flutter/material.dart';

// My Code
import 'package:flutter_components_application/src/pages/utilities/utilities.dart';
import 'package:flutter_components_application/src/providers/providers_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Components Menu'), backgroundColor: Colors.green),
      body: _list(),
    );
  }
}

Widget _list() {
  return FutureBuilder(
      future: providerMenu.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _createItems(snapshot.data));
      });
}

List<Widget> _createItems(List<dynamic> options) {
  return options.map((option) {
    //int iconCode = int.parse(option['icon2']['iconCode']);
    return Column(
      children: [
        ListTile(
            title: Text(option['texto']),
            leading: getIcon(option['icon'], "black"), // getIcon Option # 2
            // Icon( // getIcon Option # 1
            //     IconData(iconCode,
            //         fontFamily: option['icon']
            //             ['fontFamily']),
            //     color: Colors.green),
            trailing:
                Icon(Icons.keyboard_arrow_right, color: getColor('yellow')),
            onTap: () {}),
        Divider(thickness: 2)
      ],
    );
  }).toList();
}
