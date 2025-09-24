import 'package:flutter/material.dart';

class Editbodyview extends StatelessWidget {
  const Editbodyview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        TextField(
          cursorHeight: 20,
          cursorColor: Colors.lightBlueAccent,
          decoration: InputDecoration(
            hint: Text(
              "Enter Note Title",
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
        TextField(
          maxLines: 15,
          cursorHeight: 20,
          cursorColor: Colors.lightBlueAccent,
          decoration: InputDecoration(
            hint: Text(
              "Message",
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

      ],
    );
  }
}
