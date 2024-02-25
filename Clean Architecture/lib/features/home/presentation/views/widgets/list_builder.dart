import 'package:bukki/core/router/app_router.dart';
import 'package:bukki/core/utils/functions/custom_snackbar.dart';
import 'package:bukki/core/widgets/custom_error_widget.dart';
import 'package:bukki/core/widgets/custom_loading_indicator.dart';
import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:bukki/features/home/presentation/manager/books_banner/books_banner_cubit.dart';
import 'package:bukki/features/home/presentation/views/widgets/books_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  final ScrollController _scrollController = ScrollController();
  var nextPage = 1;
  var isLoading = false;
  List<BookEntity> books = [];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  Future<void> _scrollListener() async {
    var currentPos = _scrollController.position.pixels;
    var maxLen = _scrollController.position.maxScrollExtent;
    if (currentPos >= 0.7 * maxLen) {
      isLoading = true;
      await BlocProvider.of<BooksBannerCubit>(context)
          .fetchFeaturedBooks(pageNumber: nextPage++);
      isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BooksBannerCubit, BooksBannerState>(
        listener: (BuildContext context, BooksBannerState state) {
      if (state is BooksBannerSuccess) {
        books.addAll(state.books);
      }
      if (state is BooksBannerPaginationFailure) {
        customSnackBar(context, state.errMessage);
      }
    }, builder: (context, state) {
      return state is BooksBannerSuccess ||
              state is BooksBannerPaginationLoading ||
              state is BooksBannerPaginationFailure
          ? SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                controller: _scrollController,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .push(AppRouter.kBookDetailsPath, extra: books[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10.0),
                    child: BooksBanner(imgUrl: books[index].image ?? ''),
                  ),
                ),
                itemCount: books.length,
              ),
            )
          : state is BooksBannerFailure
              ? CustomErrorWidget(errMessage: state.errMessage)
              : const CustomLoadingIndicator();
    });
  }
}
