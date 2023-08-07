import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants/hive_box/hive_box.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  bool isLoading = false;

  addNote(NoteModel note) async {
    isLoading = true;
    emit(AddNoteLoading());
    try {
      Box notesBox = Hive.box<NoteModel>(kNotesBox);
      isLoading = false;
      emit(AddNoteSuccsess());
      await notesBox.add(note);
    } on Exception catch (e) {
      isLoading = false;
      AddNoteFailure(e.toString());
    }
  }
}
