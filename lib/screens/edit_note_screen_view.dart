import 'package:flutter/material.dart';
import 'package:note_app/conponants/second_screen/edit_note_view_bulider.dart';
import 'package:note_app/models/note_model.dart';

class EditNoteScreenView extends StatelessWidget {
  const EditNoteScreenView({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          EditNoteViewBulider(
            note: note,
          )
        ],
      ),
    );
  }
}
