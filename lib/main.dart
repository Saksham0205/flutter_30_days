import 'package:flutter/material.dart';
import 'package:flutter_30_days/widgets/buttons.dart';
import 'package:flutter_30_days/widgets/list_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        brightness: Brightness.dark,
      ),
      home: ListandGrid(),
    );
  }
}
