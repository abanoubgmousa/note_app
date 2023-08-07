import 'package:flutter/material.dart';
import 'package:note_app/conponants/custom_widgets/custom_bottom_sheet_folder/custom_add_button.dart';
import 'package:note_app/conponants/custom_widgets/custom_bottom_sheet_folder/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: AddNoteForm(),
    );
  }
}

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
          const SizedBox(height: 50),
          CustomAddButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
