import 'package:bukki/features/home/presentation/views/widgets/app_bar.dart';
import 'package:bukki/features/home/presentation/views/widgets/books_banner.dart';
import 'package:bukki/features/home/presentation/views/widgets/list_builder.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        ListViewBuilder(),
      ],
    );
  }
}
