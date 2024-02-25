import 'package:bukki/core/errors/failure.dart';
import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchBestNewestBooks(
      {int pageNumber = 0});
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
}
