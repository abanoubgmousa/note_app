import 'package:flutter/material.dart';
import 'package:note_app/conponants/body_widget.dart';
import 'package:note_app/conponants/custom_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const BodyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
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
    );
  }
}
