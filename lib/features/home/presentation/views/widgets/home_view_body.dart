import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';
import 'package:news_app/features/home/presentation/views/widgets/home_categories_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Morning\nHere is Some News For You",
            style: AppStyles.medium24.copyWith(color: AppColors.primaryBlack),
          ),
          SizedBox(height: 16),
          Expanded(child: HomeCategoriesList()),
        ],
      ),
    );
  }
}
