import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookAppBar extends StatelessWidget {
  const BookAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              size: 28.0,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 28.0,
            )),
      ],
    );
  }
}
