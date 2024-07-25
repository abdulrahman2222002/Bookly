import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';
class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.27),
          child: const CustomBookImage(
            image: AssetsData.testImage1,
          ),
        ),
        const SizedBox(height: 10,),
        Text(
          'The Jungle Book',
          style: Style.textStyle28.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6,),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Style.textStyle16.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 14,),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 14,),
        const BookAction(),
      ],
    );
  }
}