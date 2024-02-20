import 'package:bukki/core/errors/failure.dart';
import 'package:bukki/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
