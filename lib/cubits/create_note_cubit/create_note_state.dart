part of 'create_note_cubit.dart';

@immutable
sealed class CreateNoteState {}

final class CreateNoteInitial extends CreateNoteState {}

final class CreateNoteLoading extends CreateNoteState {}

final class CreateNoteSuccsess extends CreateNoteState {
  final List<NoteModel> notes;

  CreateNoteSuccsess(this.notes);
}

final class CreateNoteFailure extends CreateNoteState {
  final String errorMessage;

  CreateNoteFailure(this.errorMessage);
}
