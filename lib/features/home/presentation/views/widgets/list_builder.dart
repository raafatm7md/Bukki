import 'package:bukki/core/widgets/custom_error_widget.dart';
import 'package:bukki/core/widgets/custom_loading_indicator.dart';
import 'package:bukki/features/home/presentation/manager/books_banner/books_banner_cubit.dart';
import 'package:bukki/features/home/presentation/views/widgets/books_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksBannerCubit, BooksBannerState>(
      builder: (context, state) {
        return state is BooksBannerSuccess
            ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10.0),
                    child: BooksBanner(
                        imgUrl: state.books[index].volumeInfo?.imageLinks
                                ?.thumbnail ??
                            'https://edit.org/images/cat/book-covers-big-2019101610.jpg'),
                  ),
                  itemCount: state.books.length,
                ),
              )
            : state is BooksBannerFailure
                ? CustomErrorWidget(errMessage: state.errMessage)
                : const CustomLoadingIndicator();
      },
    );
  }
}
