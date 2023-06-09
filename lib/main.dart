// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:grad/src/login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  static const String _title = 'Speed Stop';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: const Text(_title),centerTitle: true,),
        body: const LogIn(),
      ),
    );
  }
}