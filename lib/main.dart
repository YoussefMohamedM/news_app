import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_router.dart';
import 'package:news_app/core/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primaryWhite,
          centerTitle: true,
          actionsIconTheme: IconThemeData(color: AppColors.primaryBlack),
        ),
        scaffoldBackgroundColor: AppColors.primaryWhite,
      ),
    );
  }
}
