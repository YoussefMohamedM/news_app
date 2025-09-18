import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/features/home/data/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_button.dart';
import 'package:news_app/features/home/presentation/views/widgets/news_image.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomBottomSheet extends StatelessWidget {
  final NewsModel newsModel;

  const CustomBottomSheet({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryBlack,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NewsImage(image: newsModel.urlToImage ?? ""),
          SizedBox(height: 8),
          Text(
            newsModel.description ?? "",
            style: AppStyles.medium14.copyWith(color: AppColors.primaryWhite),
          ),
          Spacer(),
          CustomButton(),
        ],
      ),
    );
  }
}
