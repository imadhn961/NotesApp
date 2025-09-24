import 'package:flutter/material.dart';
import 'package:nots/Widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.icon ,required this.name});
 final String name ;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name , style: TextStyle(fontSize: 30),),
        Spacer(),
        CustomSearchIcon(icon: Icon(icon),)
      ],
    );
  }
}

