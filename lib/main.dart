import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nots/Models/note_model.dart';
import 'package:nots/Views/HomePage.dart';
import 'package:nots/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:nots/cubits/notes_cubit/notes_cubit.dart';
import 'package:nots/simple_bloc_observer/simple_bloc_observer.dart';

void main() async{
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModalAdapter());
  await Hive.openBox<NoteModal>("Notes");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,

        ),
        home:Homepage(),
      ),
    );
  }
}

