import 'package:bukki/core/constants/styles.dart';
import 'package:bukki/features/search/presentation/views/widgets/search_result_list.dart';
import 'package:bukki/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          SizedBox(height: 20.0),
          Text(
            'Search Result',
            style: Styles.title,
          ),
          SizedBox(height: 10.0),
          Expanded(child: SearchResultList()),
        ],
      ),
    );
  }
}
