import 'package:flutter/material.dart';
import 'pages/page_home.dart';
import 'pages/page_kutipan.dart';
import 'pages/page_login.dart';
import 'pages/page_matkul.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/home": (context) => const PageHome(),
        "/matkul": (context) => const PageMatkul(),
        "/": (context) => const PageLogin(),
        "/kutipan": (context) => const PageKutipan(),
      },
    );
  }
}
