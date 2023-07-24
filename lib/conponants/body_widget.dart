import 'package:flutter/material.dart';
import 'package:note_app/conponants/app_bar_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
      child: const Column(
        children: [SizedBox(height: 50), AppBarWidget()],
      ),
    );
  }
}
