import 'package:bukki/core/utils/functions/launch_url.dart';
import 'package:bukki/core/widgets/custom_button.dart';
import 'package:bukki/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  final BookModel book;
  const BooksAction({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            text: 'Free',
            bgColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14.0),
                bottomLeft: Radius.circular(14.0)),
          )),
          Expanded(
              child: CustomButton(
            onPressed: () {
              launchCustomUrl(context, book.volumeInfo!.previewLink!);
            },
            text: getText(book),
            bgColor: const Color(0xFFEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(14.0),
                bottomRight: Radius.circular(14.0)),
          )),
        ],
      ),
    );
  }
}

String getText(BookModel book) {
  if (book.volumeInfo?.previewLink == null) return 'Not Available';
  return 'Preview';
}
