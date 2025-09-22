
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

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
        icon: Icon(Icons.search_rounded, color: Colors.white, size: 30),
      ),
    );
  }
}