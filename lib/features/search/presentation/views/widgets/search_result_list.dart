import 'package:bukki/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: BestSellerItem(),
      ),
      itemCount: 10,
    );
  }
}