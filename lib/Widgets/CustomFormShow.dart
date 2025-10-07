import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nots/Models/note_model.dart';
import 'package:nots/Widgets/colors_list_view.dart';
import 'package:nots/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:nots/cubits/notes_cubit/notes_cubit.dart';

class CustomFormShow extends StatefulWidget {
  const CustomFormShow({super.key});

  @override
  State<CustomFormShow> createState() => _CustomFormShowState();
}

class _CustomFormShowState extends State<CustomFormShow> {
  final GlobalKey<FormState> Kform = GlobalKey();
  AutovalidateMode autovalidate = AutovalidateMode.disabled;
  String? title, message;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: Kform,
      autovalidateMode: autovalidate,
      child: Column(
        children: [
          SizedBox(height: 30),
          TextFormField(
            onSaved: (newValue) {
              title = newValue;
            },
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Enter a valid Text";
              } else {
                return null;
              }
            },
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
          TextFormField(
            onSaved: (newValue) {
              message = newValue;
            },
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Enter a valid Text";
              } else {
                return null;
              }
            },
            maxLines: 7,
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
          SizedBox(height: 30),
          const ColorsListView(),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                fixedSize: Size(400, 20),
                shape: LinearBorder(),
              ),
              onPressed: () {
                if (Kform.currentState!.validate()) {
                  Kform.currentState!.save();
                  var formatdate = DateFormat.yMd().format(DateTime.now());
                  var noteModal = NoteModal(title: title!, body: message!, date:formatdate ,color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModal);
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  print(title);
                } else {
                  autovalidate = AutovalidateMode.always;
                  setState(() {});
                }
              },
              child: Text(
                "Create",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
