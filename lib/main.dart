import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nots/Views/HomePage.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox("Notes");
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
        brightness: Brightness.dark,

      ),
      home:Homepage(),
    );
  }
}

