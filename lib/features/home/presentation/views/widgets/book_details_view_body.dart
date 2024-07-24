import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: kEdgesPadding),
      child: Column(
        children: [
          const SafeArea(
            child: CustomBookDetailsAppBar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.23),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
