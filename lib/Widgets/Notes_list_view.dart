import 'dart:ffi';

import 'package:flutter/material.dart';

import 'NoteItem.dart';

class NotesListView extends StatelessWidget {
  NotesListView({
    super.key,
  });
  final notes = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder:(context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: NoteItem(),
          );
        },),
    );
  }
}