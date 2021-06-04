import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: RecolorBackground()
        ),
      ),
    );
  }
}

class RecolorBackground extends StatefulWidget {
  @override
  RecolorBackgroundState createState() => RecolorBackgroundState();
}

class RecolorBackgroundState extends State<RecolorBackground> {
  Color color;
  String randomLan = "Hey there!";
  List list_heylanguage = ["Hey there!", "Вітаю!", "Привет!",
    "ちょっと、そこ", "Selam!", "Hola!", "Прывітанне!"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: color,
      child: ListTile(

          onTap: () {
            setState(() {
              color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                  .withOpacity(1.0);
              randomLan = list_heylanguage[Random().nextInt(list_heylanguage.length)];
            });
          },
        title: Center(
          child: Text('$randomLan', style: TextStyle(fontFamily: 'RobotoMono',
              fontStyle: FontStyle.italic,
              fontSize: 30),),
        ),
          ),

      );
  }
}

