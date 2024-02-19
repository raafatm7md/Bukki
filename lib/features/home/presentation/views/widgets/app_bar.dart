import 'package:bukki/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
          start: 10.0, top: 45.0, end: 5.0, bottom: 15.0),
      child: Row(children: [
        Text(
          'Bukki',
          style: Styles.logo.copyWith(fontSize: 28.0),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 32.0,
            ))
      ]),
    );
  }
}
