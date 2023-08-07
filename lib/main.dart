import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/hive_box_model/hive_model.dart';
import 'package:note_app/root_app/root_app.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const Rootapp());
}
