

import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class FeaturedBooksState extends Equatable{

 const FeaturedBooksState();

 @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksFail extends FeaturedBooksState {
  final String errorMessage;

 const FeaturedBooksFail(this.errorMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksState {

  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}