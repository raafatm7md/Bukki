import 'package:bukki/features/home/data/models/book_model.dart';
import 'package:bukki/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerLoading());
    var result = await homeRepo.fetchBestNewestBooks();
    result.fold((failure) => emit(BestSellerFailure(failure.errMessage)),
            (books) => emit(BestSellerSuccess(books)));
  }
}
