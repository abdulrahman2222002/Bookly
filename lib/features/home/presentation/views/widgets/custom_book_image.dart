import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(14),
          image:  DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
