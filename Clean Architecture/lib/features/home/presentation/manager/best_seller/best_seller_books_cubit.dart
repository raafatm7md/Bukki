import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:bukki/features/home/domain/use_cases/fetch_best_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.fetchBestBooksUseCase)
      : super(BestSellerBooksInitial());

  final FetchBestBooksUseCase fetchBestBooksUseCase;

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerLoading());
    var result = await fetchBestBooksUseCase.call();
    result.fold((failure) => emit(BestSellerFailure(failure.errMessage)),
        (books) => emit(BestSellerSuccess(books)));
  }
}
