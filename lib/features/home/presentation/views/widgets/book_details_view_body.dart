
import 'package:bookly/core/utils/dummy_books.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../constants.dart';
import 'book_details.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kEdgesPadding),
            child: Column(
              children: [
                const SafeArea(
                  child: CustomBookDetailsAppBar(),
                ),
                BookDetails(
                  book: bookModel,
                ),
                const Expanded(child: SizedBox(height: 10,)),
                const SimilarBooks(),

              ],
            ),
          ),
        )
      ],
    );
  }
}







