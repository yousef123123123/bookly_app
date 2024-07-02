part of 'similar_books_cubit_cubit.dart';

abstract class SimilarBooksCubitState extends Equatable {
  const SimilarBooksCubitState();

  @override
  List<Object> get props => [];
}

class SimilarBooksCubitInitial extends SimilarBooksCubitState {}

class SimilarBooksCubitFailure extends SimilarBooksCubitState {
  final String errMesage;
  SimilarBooksCubitFailure(this.errMesage);
}

class SimilarBooksCubitSucess extends SimilarBooksCubitState {
  final List<BookModel> books;

  SimilarBooksCubitSucess(this.books);
}

class SimilarBooksCubitLoading extends SimilarBooksCubitState {}
