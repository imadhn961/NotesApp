import 'package:flutter/material.dart';
import 'package:nots/cubits/notes_cubit/notes_cubit.dart';

import '../Widgets/CustomShow.dart';
import '../Widgets/NoteCard.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
            context: context,
            builder: (context) {
              return CustomShow();
            },
          );
        },
        child: Icon(Icons.add, color: Colors.black),
        backgroundColor: Colors.blue.shade300,
        shape: CircleBorder(),
        elevation: 10,
      ),
      body: NoteView(),
    );
  }
}
