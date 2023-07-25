import 'package:flutter/material.dart';
import 'package:note_app/conponants/second_screen/edit_note_view_bulider.dart';

class EditNoteScreenView extends StatelessWidget {
  const EditNoteScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [EditNoteViewBulider()],
      ),
    );
  }
}
