import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

import '../../constants/hive_box/hive_box.dart';

part 'create_note_state.dart';

class CreateNoteCubit extends Cubit<CreateNoteState> {
  CreateNoteCubit() : super(CreateNoteInitial());

  List<NoteModel>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(CreateNoteSuccess());
  }
}
