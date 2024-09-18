import 'package:bookly/features/home/data/repops/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFail(failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
