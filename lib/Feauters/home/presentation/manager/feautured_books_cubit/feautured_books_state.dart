part of 'feautured_books_cubit.dart';

abstract class FeauturedBooksState extends Equatable {
  const FeauturedBooksState();

  @override
  List<Object> get props => [];
}

class FeauturedBooksInitial extends FeauturedBooksState {}

class FeauturedBooksLoading extends FeauturedBooksState {}

class FeauturedBooksFailure extends FeauturedBooksState {
  final String errMessage;

  const FeauturedBooksFailure(this.errMessage);
}

class FeauturedBooksSuccess extends FeauturedBooksState {
  final List<BookModel> books;

  FeauturedBooksSuccess(this.books);
}
