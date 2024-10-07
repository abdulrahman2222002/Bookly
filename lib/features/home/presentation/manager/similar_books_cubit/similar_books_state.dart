

import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class SimilarBooksState extends Equatable{

 const SimilarBooksState();

 @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksLoading extends SimilarBooksState {}
class SimilarBooksFail extends SimilarBooksState {
  final String errorMessage;

 const SimilarBooksFail(this.errorMessage);
}
class SimilarBooksSuccess extends SimilarBooksState {

  final List<BookModel> books;

  const SimilarBooksSuccess(this.books);
}