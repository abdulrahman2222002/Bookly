
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/newest_book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: NewestBooksListViewItem(),
          child: Text('data'),
        );
      },
      itemCount: 10,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
    );
  }
}
