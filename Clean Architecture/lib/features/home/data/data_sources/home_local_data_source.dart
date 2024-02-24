import 'package:bukki/core/constants/constants.dart';
import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchBestNewestBooks();
  List<BookEntity> fetchFeaturedBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchBestNewestBooks() {
    var box = Hive.box<BookEntity>(kBestBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }
}