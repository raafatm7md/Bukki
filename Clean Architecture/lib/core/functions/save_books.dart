import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveData(List<BookEntity> books, String boxName){
  var box = Hive.box(boxName);
  box.addAll(books);
}