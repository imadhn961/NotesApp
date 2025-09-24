import 'package:flutter/material.dart';
import 'package:nots/Views/EditNoteView.dart';
import 'package:nots/Widgets/EditBodyView.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});
  // int date = DateTime.now().day ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) => Editnoteview(), ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow.withOpacity(.7),
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
                    "Flutter Tips",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  "Build your career with imad hassan",
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 20,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.black, size: 40),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 10),
                child: Text(
                  "April 16 , 2025",
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
