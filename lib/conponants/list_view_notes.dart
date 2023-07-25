import 'package:flutter/material.dart';
import 'package:note_app/conponants/note_item.dart';

class ListViewNotes extends StatelessWidget {
  const ListViewNotes({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(),
        );
      },
    );
  }
}
