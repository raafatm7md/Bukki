import 'package:bukki/core/router/app_router.dart';
import 'package:bukki/features/home/data/models/book_model.dart';
import 'package:bukki/features/home/presentation/views/widgets/books_banner.dart';
import 'package:flutter/material.dart';
import 'package:bukki/core/constants/styles.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  final BookModel book;
  const BestSellerItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsPath, extra: book);
      },
      child: SizedBox(
        height: 140.0,
        child: Row(
          children: [
            BooksBanner(
                imgUrl: book.volumeInfo?.imageLinks?.thumbnail ??
                    'https://edit.org/images/cat/book-covers-big-2019101610.jpg'),
            const SizedBox(width: 20.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.volumeInfo?.title ?? 'Book title',
                    style: Styles.title.copyWith(fontWeight: FontWeight.normal),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3.0),
                  Text(book.volumeInfo?.authors?[0] ?? 'Author',
                      style: const TextStyle(fontSize: 14.0)),
                  const SizedBox(height: 15.0),
                  const Row(
                    children: [
                      Text(
                        '0.00 \$',
                        style: Styles.title,
                      ),
                      Spacer(),
                      BookRating(rating: 0.0, count: 0)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  final double rating;
  final int count;
  const BookRating({super.key, required this.rating, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const SizedBox(width: 5.0),
        Text('$rating', style: Styles.title),
        const SizedBox(width: 6.0),
        Text('($count)',
            style: Styles.title
                .copyWith(fontWeight: FontWeight.normal, color: Colors.grey)),
      ],
    );
  }
}
