import 'package:flutter/material.dart';
import 'package:nots/Models/note_model.dart';
import 'package:nots/Widgets/edit_note_colors_list_view.dart';

class Editbodyview extends StatelessWidget {
  const Editbodyview({super.key,required this.note});
 final NoteModal note;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        TextFormField(
          onChanged: (value) {
            note.title = value;
            note.save();
          },
          cursorHeight: 20,
          cursorColor: Colors.lightBlueAccent,
          decoration: InputDecoration(
            hint: Text(
              note.title,
              style: TextStyle(color: Colors.lightBlueAccent.withOpacity(.3)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          minLines: 5,
          maxLines: null,
          cursorHeight: 20,
          cursorColor: Colors.lightBlueAccent,
          onChanged: (value) {
            note.body = value;
            note.save();
          },
          decoration: InputDecoration(
            hint: Text(
              note.body,
              style: TextStyle(color: Colors.lightBlueAccent.withOpacity(.3)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        EditNoteColorsList(
          note: note,
        ),

      ],
    );
  }
}
