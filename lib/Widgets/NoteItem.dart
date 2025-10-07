import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots/Models/note_model.dart';
import 'package:nots/Views/EditNoteView.dart';
import 'package:nots/Widgets/EditBodyView.dart';
import 'package:nots/cubits/notes_cubit/notes_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key , required this.note});
  // int date = DateTime.now().day ;
  final NoteModal note  ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) => Editnoteview(note: note,), ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    note.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  note.body,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 20,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(Icons.delete, color: Colors.black, size: 40),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 10),
                child: Text(
                  note.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
