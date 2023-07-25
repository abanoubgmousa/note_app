import 'package:flutter/material.dart';
import 'package:note_app/constants/colors/colors_app.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: keyPrymairyColor,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: keyPrymairyColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(keyPrymairyColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
