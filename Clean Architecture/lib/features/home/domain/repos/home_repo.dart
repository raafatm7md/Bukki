import 'package:bukki/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchBestNewestBooks();
  Future<List<BookEntity>> fetchFeaturedBooks();
}
