import 'package:flutter/material.dart';

import '../../../../../core/utils/dummy_books.dart';
import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final book = books[index];
            return  Padding(
              padding: const EdgeInsets.only(right: 24),
              child: CustomBookImage(
                image: book.image
              ),
            );
          },
        itemCount: books.length,
      ),
    );
  }
}