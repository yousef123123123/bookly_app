import 'package:bloc/bloc.dart';
import 'package:bookly/Feauters/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feauters/home/data/models/repos/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feautured_books_state.dart';

class FeauturedBooksCubit extends Cubit<FeauturedBooksState> {
  FeauturedBooksCubit(this.homeRepo) : super(FeauturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBox() async {
    emit(FeauturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeauturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeauturedBooksSuccess(books));
    });
  }
}
