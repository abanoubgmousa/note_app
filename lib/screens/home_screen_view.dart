import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/conponants/first_screen/body_view_screen_bulider.dart';
import 'package:note_app/conponants/custom_widgets/custom_bottom_sheet_folder/custom_bottom_sheet.dart';
import 'package:note_app/cubits/create_note_cubit/create_note_cubit.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateNoteCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: const BodyViewScreenBulider(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isDismissible: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const CustomBottomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
