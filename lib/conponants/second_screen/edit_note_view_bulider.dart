import 'package:flutter/material.dart';
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
          )
        ],
      ),
    );
  }
}
