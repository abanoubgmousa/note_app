import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/hive_box/hive_box.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/root_app/root_app.dart';
import 'package:note_app/cubits/simple_bloc_observer.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const Rootapp());
}
