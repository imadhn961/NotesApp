import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:nots/Models/note_model.dart';


part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModal> notes = [];

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModal>("Notes");
    notes = notesBox.values.toList();
    print(notesBox.values);
    emit(NotesSuccess());
  }
}
