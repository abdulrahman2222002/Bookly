import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/widgets/custom_error_widget.dart';
import '../../../../../core/utils/widgets/custom_loading_widget.dart';
import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //final book = books[index];
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8),
                  child: CustomBookImage(
                    imageUrl:state.books[index].volumeInfo.imageLinks!.thumbnail,

                  ),
                );
              },
              itemCount: state.books.length,
            ),
          );
        } else if(state is FeaturedBooksFail){
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomLoadingWidget();
        }

      },

    );
  }
}