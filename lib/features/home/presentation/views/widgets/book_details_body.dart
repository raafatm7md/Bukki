import 'package:bukki/core/constants/styles.dart';
import 'package:bukki/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bukki/features/home/presentation/views/widgets/book_app_bar.dart';
import 'package:bukki/features/home/presentation/views/widgets/books_banner.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const BookAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const BooksBanner(),
          ),
          const SizedBox(height: 25.0),
          Text(
            'My Book Title',
            style: Styles.title
                .copyWith(fontWeight: FontWeight.bold, fontSize: 24.0),
          ),
          const SizedBox(height: 5.0),
          Opacity(
            opacity: 0.8,
            child: Text(
              'J.K. Rowling',
              style: Styles.title.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 10.0),
          const BookRating(),
        ],
      ),
    );
  }
}