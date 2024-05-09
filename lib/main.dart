import 'package:flutter/material.dart';
import 'package:flutter_30_days/widgets/container_sized_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}
