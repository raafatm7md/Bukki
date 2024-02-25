import 'package:bukki/core/constants/styles.dart';
import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:bukki/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bukki/features/home/presentation/views/widgets/book_app_bar.dart';
import 'package:bukki/features/home/presentation/views/widgets/books_action.dart';
import 'package:bukki/features/home/presentation/views/widgets/books_banner.dart';
import 'package:bukki/features/home/presentation/views/widgets/similar_books_list.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  final BookEntity book;
  const BookDetailsBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BookAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.2),
              child: BooksBanner(
                  imgUrl: book.image ??
                      'https://edit.org/images/cat/book-covers-big-2019101610.jpg'),
            ),
            const SizedBox(height: 25.0),
            Text(
              book.title,
              style: Styles.title
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5.0),
            Opacity(
              opacity: 0.8,
              child: Text(
                book.authorName ?? 'Author',
                style: Styles.title.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(height: 10.0),
            const BookRating(rating: 0.0, count: 0),
            const SizedBox(height: 25.0),
            BooksAction(book: book),
            const SizedBox(height: 25.0),
            const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'You can also like',
                style: Styles.title,
              ),
            ),
            const SizedBox(height: 10.0),
            const SimilarBooksListView(),
          ],
        ),
      ),
    );
  }
}
