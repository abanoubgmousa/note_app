import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Note App",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
