import 'package:bukki/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/splash/presentation/views/splash.dart';

void main() {
  runApp(const Bukki());
}

class Bukki extends StatelessWidget {
  const Bukki({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}
