import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:bukki/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'books_banner_state.dart';

class BooksBannerCubit extends Cubit<BooksBannerState> {
  BooksBannerCubit(this.featuredBooksUseCase) : super(BooksBannerInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(BooksBannerLoading());
    var result = await featuredBooksUseCase.call();
    result.fold((failure) => emit(BooksBannerFailure(failure.errMessage)),
        (books) => emit(BooksBannerSuccess(books)));
  }
}
