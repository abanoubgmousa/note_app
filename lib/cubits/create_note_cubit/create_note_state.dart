part of 'create_note_cubit.dart';

@immutable
sealed class CreateNoteState {}

final class CreateNoteInitial extends CreateNoteState {}

final class CreateNoteSuccess extends CreateNoteState {}
