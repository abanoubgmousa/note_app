part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccsess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errorMessage;
  AddNoteFailure(this.errorMessage);
}
