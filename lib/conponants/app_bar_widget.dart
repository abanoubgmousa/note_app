import 'package:flutter/material.dart';
import 'package:note_app/conponants/custom_search_icon.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        CustomSearchIcon()
      ],
    );
  }
}
