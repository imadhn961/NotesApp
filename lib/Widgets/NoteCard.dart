import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots/cubits/notes_cubit/notes_cubit.dart';

import 'CustomAppBar.dart';
import 'NoteItem.dart';
import 'Notes_list_view.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 40,),
            CustomAppBar(name: "Nots",icon: Icons.search,),
            Expanded(
              child: NotesListView()
            ),
          ],
        ),
    );
  }
}





