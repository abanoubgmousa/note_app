import 'package:flutter/material.dart';
import 'package:note_app/conponants/custom_widgets/color_item_picker/color_item_picker.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ColorItemPicker();
        },
      ),
    );
  }
}
