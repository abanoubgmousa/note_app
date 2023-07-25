import 'package:flutter/material.dart';
import 'package:note_app/conponants/custom_widgets/custom_view/custom_note_item.dart';

class ListViewNotes extends StatelessWidget {
  const ListViewNotes({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: CustomNoteItem(),
          );
        },
      ),
    );
  }
}
