import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/hive_box/hive_box.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/root_app/root_app.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const Rootapp());
}
