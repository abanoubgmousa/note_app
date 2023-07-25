import 'package:flutter/material.dart';
import 'package:note_app/conponants/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(hintText: "title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: "content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
