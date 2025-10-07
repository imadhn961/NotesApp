import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots/Widgets/NoteItem.dart';
import 'package:nots/cubits/notes_cubit/notes_cubit.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: BlocBuilder<NotesCubit, NotesState>(

        builder: (context, state) {
          var notes = [];

          if(state is NotesSuccess){
            notes  = BlocProvider.of<NotesCubit>(context).notes;
          }else if (notes.isEmpty) {
            return const Center(child: Text("No notes yet."));
          }

          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: NoteItem(note: notes[index]),
              );
            },
          );
        },
      ),
    );
  }
}
