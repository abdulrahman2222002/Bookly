

import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class NewestBooksState extends Equatable{

 const NewestBooksState();

 @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}
class NewestBooksLoading extends NewestBooksState {}
class NewestBooksFail extends NewestBooksState {
  final String errorMessage;

 const NewestBooksFail(this.errorMessage);
}
class NewestBooksSuccess extends NewestBooksState {

  final List<BookModel> books;

  const NewestBooksSuccess(this.books);
}