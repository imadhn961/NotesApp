import 'package:flutter/material.dart';
import 'package:nots/Widgets/CustomAppBar.dart';
import 'package:nots/Widgets/EditBodyView.dart';

class Editnoteview extends StatelessWidget {
  const Editnoteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 40,),
          CustomAppBar(icon: Icons.check,name: "Edit Page",),
          Editbodyview(),
        ],
      ),
    );
  }
}
