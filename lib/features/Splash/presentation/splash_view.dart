import 'package:estore/core/constants.dart';
import 'package:estore/features/Splash/presentation/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMainColor,
      body: SplashViewBody(),
    );
  }
}