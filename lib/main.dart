import 'package:fitness_app/Screens/home_screen.dart';
import 'package:fitness_app/Screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}


class TextHealth extends StatelessWidget {
  const TextHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Health",
      style: TextStyle(
        decoration: TextDecoration.underline,
        decorationColor: Colors.red, // optional
        decorationThickness: 2, // optional
        decorationStyle: TextDecorationStyle.dashed, // optional
      ),
    );
  }
}
