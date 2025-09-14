import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/utils/app_assets.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    initAnimation();
    Future.delayed(Duration(seconds: 7), () {
      GoRouter.of(context).push(AppRouter.homeRouteName);
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RotationTransition(
          turns: animation,
          child: Image.asset(
            AppAssets.splashImage,
            color: AppColors.darkGrey,
            height: MediaQuery.heightOf(context) * 0.19,
          ),
        ),
      ],
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    animation = Tween<double>(begin: 0, end: 2).animate(
      CurvedAnimation(parent: animationController, curve: Curves.bounceOut),
    );
    animationController.forward();
  }
}
