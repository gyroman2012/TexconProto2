// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:listview/homepage.dart';
import 'package:listview/newpage.dart';
import 'memopage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Timesheet App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Memo(),
    );
  }
}
