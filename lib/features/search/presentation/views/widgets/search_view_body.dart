import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_text_feild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/widgets/x_close_button.dart';
import '../../../../home/presentation/views/widgets/newest_book_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kEdgesPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: XCloseButton(),
              ),
              Expanded(child: SearchTextFeild()),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Style.textStyle16,
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
