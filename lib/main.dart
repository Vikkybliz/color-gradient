import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color gradient in Flutter'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.green]
              )
            ),
          ),
          ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              gradient: SweepGradient(
                // begin: Alignment.bottomLeft,
                // end: Alignment.topRight,
                startAngle: 0.4,
                  endAngle: 0.9,
                  stops: [0.3, 0.5, 1],
                  colors: [Colors.red, Colors.blue, Colors.green]
              )
            ),
          ),
        ),
        ),
    );
  }
}
