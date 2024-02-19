import 'package:bukki/core/constants/styles.dart';
import 'package:bukki/features/home/presentation/views/widgets/app_bar.dart';
import 'package:bukki/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bukki/features/home/presentation/views/widgets/list_builder.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          ListViewBuilder(),
          SizedBox(height: 30.0),
          Text(
            'Best Seller',
            style: Styles.title,
          ),
          SizedBox(height: 10.0),
          BestSellerItem()
        ],
      ),
    );
  }
}
