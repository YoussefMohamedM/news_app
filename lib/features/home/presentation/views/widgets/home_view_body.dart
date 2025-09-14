import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_assets.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';
import 'package:news_app/features/home/presentation/views/widgets/home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: HomeAppBar());
  }
}
