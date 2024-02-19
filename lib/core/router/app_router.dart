import 'package:bukki/features/home/presentation/views/home_screen.dart';
import 'package:bukki/features/splash/presentation/views/splash.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomePath = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomePath,
      builder: (context, state) => const HomeScreen(),
    ),
  ]);
}
