import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots/Models/note_model.dart';
import 'package:nots/Views/HomePage.dart';
import 'package:nots/Widgets/CustomAppBar.dart';
import 'package:nots/Widgets/EditBodyView.dart';
import 'package:nots/cubits/notes_cubit/notes_cubit.dart';

class Editnoteview extends StatelessWidget {
  const Editnoteview({super.key, required this.note});
  final NoteModal note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(
            icon: Icons.check,
            name: "Edit Page",
            onTap: () {

              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            },
          ),
          Expanded(
            child: SingleChildScrollView(child: Editbodyview(note: note)),
          ),
        ],
      ),
    );
  }
}
