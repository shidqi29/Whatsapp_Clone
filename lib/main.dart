import 'package:flutter/material.dart';
import 'widgets/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
