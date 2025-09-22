import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'NoteItem.dart';
import 'Notes_list_view.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 40,),
            CustomAppBar(),
            Expanded(
              child: NotesListView()
            ),
          ],
        ),
    );
  }
}





