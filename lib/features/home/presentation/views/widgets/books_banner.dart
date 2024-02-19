import 'package:flutter/material.dart';

class BooksBanner extends StatelessWidget {
  const BooksBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: const DecorationImage(
                image: NetworkImage('https://edit.org/images/cat/book-covers-big-2019101610.jpg'), fit: BoxFit.fill)),
      ),
    );
  }
}