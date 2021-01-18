import 'package:flutter/material.dart';

// My Code
import 'package:flutter_components_application/src/pages/home_page.dart';
// import 'package:flutter_components_application/src/pages/home_temp.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
