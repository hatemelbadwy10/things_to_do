import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'screens/login_screen.dart';

void main() {
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const ThingsToDo());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 5));
}

class ThingsToDo extends StatelessWidget {
  const ThingsToDo({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
