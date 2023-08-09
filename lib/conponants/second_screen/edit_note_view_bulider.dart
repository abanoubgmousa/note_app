import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/conponants/custom_widgets/custom_bottom_sheet_folder/custom_text_field.dart';
import 'package:note_app/conponants/first_screen/app_bar_widget_bulider.dart';
import 'package:note_app/cubits/create_note_cubit/create_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

class EditNoteViewBulider extends StatefulWidget {
  const EditNoteViewBulider({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBulider> createState() => _EditNoteViewBuliderState();
}

class _EditNoteViewBuliderState extends State<EditNoteViewBulider> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          AppBarWidgetBulider(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<CreateNoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: "Edit Note",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hintText: widget.note.subTitle,
              maxLines: 5),
        ],
      ),
    );
  }
}
