import 'package:bukki/core/constants/constants.dart';
import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchBestNewestBooks();
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0});
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchBestNewestBooks() {
    var box = Hive.box<BookEntity>(kBestBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kFeaturedBox);
    int length = box.values.length;
    if (startIndex >= length || endIndex > length) return [];
    return box.values.toList().sublist(startIndex, endIndex);
  }
}
