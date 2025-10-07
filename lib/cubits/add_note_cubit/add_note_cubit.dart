import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:nots/Models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = const Color(0xffAC3931);
  addNote(NoteModal note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModal>("Notes");
      await notesBox.add(note);
      print(notesBox.length);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
