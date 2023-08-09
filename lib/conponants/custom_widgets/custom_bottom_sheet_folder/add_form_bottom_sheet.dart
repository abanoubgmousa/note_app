import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/conponants/custom_widgets/color_item_picker/colors_list_view.dart';
import 'package:note_app/conponants/custom_widgets/custom_bottom_sheet_folder/custom_add_button.dart';
import 'package:note_app/conponants/custom_widgets/custom_bottom_sheet_folder/custom_text_field.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: ListView(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hintText: "title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: "content",
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 10),
          const ColorsListView(),
          const SizedBox(height: 30),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomAddButton(
                isLoading: state is AddNoteLoading ? true : false,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate =
                        DateFormat("dd-mm-yyyy").format(currentDate);
                    NoteModel noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      color: Colors.blue.value,
                      date: formattedCurrentDate,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
