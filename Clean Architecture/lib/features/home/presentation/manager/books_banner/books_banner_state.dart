part of 'books_banner_cubit.dart';

@immutable
abstract class BooksBannerState {}

class BooksBannerInitial extends BooksBannerState {}

class BooksBannerLoading extends BooksBannerState {}

class BooksBannerSuccess extends BooksBannerState {
  final List<BookModel> books;
  BooksBannerSuccess(this.books);
}

class BooksBannerFailure extends BooksBannerState {
  final String errMessage;
  BooksBannerFailure(this.errMessage);
}
