import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:bukki/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final BookEntity book;
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
