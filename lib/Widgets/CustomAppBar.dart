import 'package:flutter/material.dart';
import 'package:nots/Widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes" , style: TextStyle(fontSize: 30),),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}

