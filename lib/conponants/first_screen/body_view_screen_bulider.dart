import 'package:flutter/material.dart';
import 'package:note_app/conponants/first_screen/app_bar_widget_bulider.dart';
import 'package:note_app/conponants/first_screen/list_view_notes_bulider.dart';

class BodyViewScreenBulider extends StatelessWidget {
  const BodyViewScreenBulider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(height: 50),
          AppBarWidgetBulider(
            icon: Icons.search,
            title: "Notes",
          ),
          Expanded(child: ListViewNotesbulider())
        ],
      ),
    );
  }
}
