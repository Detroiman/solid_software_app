import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solid_software_app/widgets/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
      home: HomePage(),
    );
  }
}
