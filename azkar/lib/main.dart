// @dart=2.9

import 'package:azkar/modules/morning.dart';
import 'package:azkar/splash.dart';
import 'package:flutter/material.dart';
import 'package:azkar/layout/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      runApp(MyApp());
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}
