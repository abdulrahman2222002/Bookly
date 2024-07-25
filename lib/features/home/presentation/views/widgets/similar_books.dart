
import 'package:bookly/features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooks extends StatelessWidget {
  const SimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Style.textStyle16,
        ),
        SizedBox(height: 16,),
        SimilarBooksListView()
      ],
    );
  }
}