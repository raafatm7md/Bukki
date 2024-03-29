import 'package:bukki/core/constants/constants.dart';
import 'package:bukki/core/router/app_router.dart';
import 'package:bukki/core/utils/bloc_observer.dart';
import 'package:bukki/core/utils/service_locator.dart';
import 'package:bukki/features/home/data/repos/home_repo_impl.dart';
import 'package:bukki/features/home/domain/entities/book_entity.dart';
import 'package:bukki/features/home/domain/use_cases/fetch_best_books_use_case.dart';
import 'package:bukki/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bukki/features/home/presentation/manager/best_seller/best_seller_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'features/home/presentation/manager/books_banner/books_banner_cubit.dart';

Future<void> main() async {
  setupServiceLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kBestBox);
  Bloc.observer = MyBlocObserver();
  runApp(const Bukki());
}

class Bukki extends StatelessWidget {
  const Bukki({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => BooksBannerCubit(
                FetchFeaturedBooksUseCase(getIt.get<HomeRepoImpl>()))
              ..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) => BestSellerBooksCubit(
                FetchBestBooksUseCase(getIt.get<HomeRepoImpl>()))
              ..fetchBestSellerBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
