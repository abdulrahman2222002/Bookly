
import 'package:bookly/features/home/presentation/views/widgets/similar_books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../constants.dart';
import 'book_details.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kEdgesPadding),
            child: Column(
              children: [
                SafeArea(
                  child: CustomBookDetailsAppBar(),
                ),
                BookDetails(),
                Expanded(child: SizedBox(height: 20,)),
                SimilarBooks(),
                SizedBox(height: 20,)
              ],
            ),
          ),
        )
      ],
    );
  }
}







