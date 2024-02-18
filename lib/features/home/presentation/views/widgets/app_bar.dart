import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
      child: Row(children: [
        const Text(
          'Bukki',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
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
