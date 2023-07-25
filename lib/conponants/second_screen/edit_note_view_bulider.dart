import 'package:flutter/material.dart';
import 'package:note_app/conponants/custom_widgets/custom_bottom_sheet_folder/custom_text_field.dart';
import 'package:note_app/conponants/first_screen/app_bar_widget_bulider.dart';

class EditNoteViewBulider extends StatelessWidget {
  const EditNoteViewBulider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          AppBarWidgetBulider(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hintText: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hintText: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
