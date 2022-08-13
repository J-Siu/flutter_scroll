import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget text = const Text(
      'text',
      style: TextStyle(backgroundColor: Colors.black, color: Colors.white),
    );
    List<Widget> children = [];
    for (int i = 0; i < 100; i++) {
      children.add(text);
    }
    return MaterialApp(
      title: 'Scroll',
      home: Scrollbar(
        child: SingleChildScrollView(
          child: ColoredBox(
            color: Colors.black,
            child: Center(child: Column(children: children)),
          ),
        ),
      ),
    );
  }
}
