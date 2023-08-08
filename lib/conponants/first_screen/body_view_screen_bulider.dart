import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/conponants/first_screen/app_bar_widget_bulider.dart';
import 'package:note_app/conponants/first_screen/list_view_notes_bulider.dart';
import 'package:note_app/cubits/create_note_cubit/create_note_cubit.dart';

class BodyViewScreenBulider extends StatefulWidget {
  const BodyViewScreenBulider({super.key});

  @override
  State<BodyViewScreenBulider> createState() => _BodyViewScreenBuliderState();
}

class _BodyViewScreenBuliderState extends State<BodyViewScreenBulider> {
  @override
  void initState() {
    BlocProvider.of<CreateNoteCubit>(context).fetchAllNotes();
    super.initState();
  }

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
