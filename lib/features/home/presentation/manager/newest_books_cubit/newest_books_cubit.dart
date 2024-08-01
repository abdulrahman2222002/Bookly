import 'package:bookly/features/home/data/repops/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(NewestBooksFail(failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
