import 'package:flutter/material.dart';
import 'package:note_app/conponants/first_screen/app_bar_widget.dart';
import 'package:note_app/conponants/first_screen/list_view_notes.dart';

class BodyViewScreen extends StatelessWidget {
  const BodyViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
      child: const Column(
        children: [
          SizedBox(height: 50),
          AppBarWidget(),
          Expanded(child: ListViewNotes())
        ],
      ),
    );
  }
}
