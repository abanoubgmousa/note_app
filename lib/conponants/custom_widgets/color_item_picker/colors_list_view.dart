import 'package:flutter/material.dart';
import 'package:note_app/conponants/custom_widgets/color_item_picker/color_item_picker.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  List<Color> colors = const [
    Color(0xffffffcc),
    Color(0xffccd9ff),
    Color(0xffccffcc),
    Color(0xffF6FFA6),
    Color(0xffffca7a),
    Color(0xffbae8e8),
    Color(0xffEAC696),
    Color(0xffACFADF),
    Color(0xffFDCEDF),
    Color(0xffFD8A8A),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItemPicker(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
