import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots/Widgets/CustomFormShow.dart';
import 'package:nots/cubits/add_note_cubit/add_note_cubit.dart';

class CustomShowContainer extends StatelessWidget {
  const CustomShowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 20,left: 20,bottom: MediaQuery.of(context).viewInsets.bottom),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if(state is AddNoteSuccess){
                Navigator.pop(context);
              }
              if(state is AddNoteFailure){
                print(state.errMessage);
              }
            },
            builder: (context, state) => CustomFormShow(),
          ),
        ),
      ),
    );
  }
}
