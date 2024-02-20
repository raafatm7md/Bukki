part of 'best_seller_books_cubit.dart';

@immutable
abstract class BestSellerBooksState {}

class BestSellerBooksInitial extends BestSellerBooksState {}

class BestSellerLoading extends BestSellerBooksState {}

class BestSellerSuccess extends BestSellerBooksState {
  final List<BookModel> books;
  BestSellerSuccess(this.books);
}

class BestSellerFailure extends BestSellerBooksState {
  final String errMessage;
  BestSellerFailure(this.errMessage);
}
