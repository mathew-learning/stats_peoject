import 'package:flutter/material.dart';
import 'edit_panel.dart';
import 'login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorSchemeSeed: const Color(0xff6750a4),useMaterial3: true,
        colorSchemeSeed: Color.fromARGB(255, 62, 193, 11),useMaterial3: true,


      ),
      home:  LoginPage(),
    );
  }
}


