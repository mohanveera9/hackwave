import 'package:flutter/material.dart';
import 'package:hackwave/pages/supervisor.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Supervisor(),
    );
  }
}
