part of 'books_banner_cubit.dart';

@immutable
abstract class BooksBannerState {}

class BooksBannerInitial extends BooksBannerState {}

class BooksBannerLoading extends BooksBannerState {}

class BooksBannerPaginationLoading extends BooksBannerState {}

class BooksBannerPaginationFailure extends BooksBannerState {
  final String errMessage;
  BooksBannerPaginationFailure(this.errMessage);
}

class BooksBannerSuccess extends BooksBannerState {
  final List<BookEntity> books;
  BooksBannerSuccess(this.books);
}

class BooksBannerFailure extends BooksBannerState {
  final String errMessage;
  BooksBannerFailure(this.errMessage);
}
