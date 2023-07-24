import 'package:flutter/material.dart';
import 'package:note_app/screens/home_screen.dart';

class Rootapp extends StatelessWidget {
  const Rootapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.blueGrey,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.amber)),
      home: const HomeScreen(),
    );
  }
}
