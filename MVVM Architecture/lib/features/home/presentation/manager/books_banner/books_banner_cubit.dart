import 'package:bukki/features/home/data/models/book_model.dart';
import 'package:bukki/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'books_banner_state.dart';

class BooksBannerCubit extends Cubit<BooksBannerState> {
  BooksBannerCubit(this.homeRepo) : super(BooksBannerInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(BooksBannerLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) => emit(BooksBannerFailure(failure.errMessage)),
        (books) => emit(BooksBannerSuccess(books)));
  }
}
