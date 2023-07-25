import 'package:flutter/material.dart';
import 'package:note_app/conponants/custom_widgets/custom_bottom_sheet_folder/custom_add_button.dart';
import 'package:note_app/conponants/custom_widgets/custom_bottom_sheet_folder/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: const [
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
          SizedBox(height: 50),
          CustomAddButton()
        ],
      ),
    );
  }
}
