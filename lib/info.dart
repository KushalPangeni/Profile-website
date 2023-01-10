import 'package:flutter/material.dart';
// import 'package:webapp/about.dart';
import 'package:webapp/home.dart';
// import 'package:webapp/homeview.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: const Home(),
    );
  }
}
