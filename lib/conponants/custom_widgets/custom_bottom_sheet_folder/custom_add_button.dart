import 'package:flutter/material.dart';
import 'package:note_app/constants/colors/colors_app.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      minWidth: MediaQuery.sizeOf(context).width,
      height: 50,
      color: keyPrymairyColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: const Text(
        "Add",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
      ),
    );
  }
}
