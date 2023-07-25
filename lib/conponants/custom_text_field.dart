import 'package:flutter/material.dart';
import 'package:note_app/constants/colors/colors_app.dart';
import 'package:note_app/constants/strings/text_feild.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: keyPrymairyColor,
      decoration: InputDecoration(
          hintText: hintText(hint: "title"),
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
