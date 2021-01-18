import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final options = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Days'),
        ),
        body: ListView(
          children: _createItemShort(),
        ));
  }

  // createItems functions using for

  List<Widget> _createItems() {
    List<Widget> items = new List<Widget>();

    for (String day in options) {
      final widget = ListTile(
          title: Text(day),
          leading: Icon(Icons.access_alarm),
          trailing: Icon(Icons.keyboard_arrow_right));
      items..add(widget)..add(Divider(thickness: 2));
    }
    return items;
  }

  // createItems functions using map

  List<Widget> _createItemShort() {
    return options.map((day) {
      return Column(
        children: [
          ListTile(
              title: Text(day),
              leading: Icon(Icons.access_alarm),
              trailing: Icon(Icons.keyboard_arrow_right)),
          Divider(thickness: 3)
        ],
      );
    }).toList();
  }
}
