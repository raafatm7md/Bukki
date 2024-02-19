import 'package:bukki/features/home/presentation/views/widgets/books_banner.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsetsDirectional.only(end: 10.0),
          child: BooksBanner(),
        ),
      ),
    );
  }
}
