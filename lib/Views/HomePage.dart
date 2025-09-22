import 'package:flutter/material.dart';

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
