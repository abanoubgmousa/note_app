import 'package:flutter/material.dart';
import 'package:note_app/constants/colors_app/colors/colors_app.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, this.onPressed, this.isLoading = false});

  final void Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: MediaQuery.sizeOf(context).width,
      height: 50,
      color: keyPrymairyColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: isLoading
          ? const SizedBox(
              height: 26,
              width: 26,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : const Text(
              "Add",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
    );
  }
}
