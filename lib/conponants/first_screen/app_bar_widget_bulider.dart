import 'package:flutter/material.dart';
import 'package:note_app/conponants/custom_widgets/custom_view/custom_search_icon.dart';

class AppBarWidgetBulider extends StatelessWidget {
  const AppBarWidgetBulider(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
