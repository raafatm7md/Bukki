import 'package:bukki/core/widgets/custom_error_widget.dart';
import 'package:bukki/core/widgets/custom_loading_indicator.dart';
import 'package:bukki/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bukki/features/home/presentation/views/widgets/books_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        return state is SimilarBooksSuccess
            ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsetsDirectional.only(end: 10.0),
                    child: BooksBanner(
                        imgUrl:
                            'https://edit.org/images/cat/book-covers-big-2019101610.jpg'),
                  ),
                ),
              )
            : state is SimilarBooksFailure
                ? CustomErrorWidget(errMessage: state.errMessage)
                : const CustomLoadingIndicator();
      },
    );
  }
}
