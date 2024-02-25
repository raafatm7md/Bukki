import 'package:bukki/features/home/data/models/book_model.dart';
import 'package:bukki/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final BookModel book;
  const BookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetailsBody(
        book: book,
      )),
    );
  }
}
