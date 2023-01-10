import 'package:flutter/material.dart';
import 'package:webapp/homeview.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
            titleMedium:
                TextStyle(color: Colors.black, fontFamily: 'RobotoSlab')),
        iconTheme: const IconThemeData(color: Colors.black),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w300),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.teal[50],
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.amber),
      ),
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
