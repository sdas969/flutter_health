import 'package:flutter/material.dart';
import 'package:flutter_health/constants.dart';
import 'package:flutter_health/ui/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
      theme: Theme.of(context).copyWith(
          appBarTheme: const AppBarTheme(backgroundColor: appBarColor)),
      home: const HomeScreen());
}
