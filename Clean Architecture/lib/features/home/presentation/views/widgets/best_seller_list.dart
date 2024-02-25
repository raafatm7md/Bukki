import 'package:bukki/core/widgets/custom_error_widget.dart';
import 'package:bukki/core/widgets/custom_loading_indicator.dart';
import 'package:bukki/features/home/presentation/manager/best_seller/best_seller_books_cubit.dart';
import 'package:bukki/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        return state is BestSellerSuccess
            ? ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: BestSellerItem(
                    book: state.books[index],
                  ),
                ),
                itemCount: state.books.length,
              )
            : state is BestSellerFailure
                ? CustomErrorWidget(errMessage: state.errMessage)
                : const CustomLoadingIndicator();
      },
    );
  }
}
