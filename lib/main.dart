import 'package:flutter/material.dart';
import 'package:flutter1/pages/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CounterPage(),
      theme: ThemeData(colorScheme: ColorScheme.of(context)),
    );
  }
}

