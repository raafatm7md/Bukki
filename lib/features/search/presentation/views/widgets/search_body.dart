import 'package:bukki/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          SearchTextField(),
        ],
      ),
    );
  }
}
