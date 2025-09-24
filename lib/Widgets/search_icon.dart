
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
    required this.icon
  });
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.07)
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        color: Colors.white,
        iconSize: 30,
      ),
    );
  }
}