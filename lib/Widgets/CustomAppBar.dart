import 'package:flutter/material.dart';
import 'package:nots/Widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.icon ,required this.name, this.onTap});
 final String name ;
 final IconData icon;
 final void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Row(
        children: [
          Text(name , style: TextStyle(fontSize: 30),),
          Spacer(),
          CustomSearchIcon(icon: Icon(icon),tap: onTap,)
        ],
      ),
    );
  }
}

