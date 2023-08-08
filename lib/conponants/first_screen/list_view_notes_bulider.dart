import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/conponants/custom_widgets/custom_view/custom_note_item.dart';
import 'package:note_app/cubits/create_note_cubit/create_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

class ListViewNotesbulider extends StatelessWidget {
  const ListViewNotesbulider({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNoteCubit, CreateNoteState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<CreateNoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: CustomNoteItem(),
              );
            },
          ),
        );
      },
    );
  }
}
