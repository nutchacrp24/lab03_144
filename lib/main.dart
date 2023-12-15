import 'package:flutter/material.dart';
import 'package:lab03_144/pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 14, 92, 209),
            background: const Color.fromARGB(255, 176, 171, 185)),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}
