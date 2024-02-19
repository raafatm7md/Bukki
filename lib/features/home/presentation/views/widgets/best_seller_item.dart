import 'package:flutter/material.dart';
import 'package:bukki/core/constants/styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.0,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://edit.org/images/cat/book-covers-big-2019101610.jpg'),
                      fit: BoxFit.fill)),
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Book Title My Book Title',
                  style: Styles.title.copyWith(fontWeight: FontWeight.normal),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3.0),
                const Text('J.K. Rowling', style: TextStyle(fontSize: 14.0)),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    const Text(
                      '19.99 \$',
                      style: Styles.title,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 5.0),
                    const Text('4.8', style: Styles.title),
                    const SizedBox(width: 6.0),
                    Text('(255)',
                        style: Styles.title.copyWith(
                            fontWeight: FontWeight.normal, color: Colors.grey)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}