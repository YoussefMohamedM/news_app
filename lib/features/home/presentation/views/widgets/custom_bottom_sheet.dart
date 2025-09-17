import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_button.dart';
import 'package:news_app/features/home/presentation/views/widgets/news_image.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

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
          NewsImage(),
          SizedBox(height: 8),
          Text(
            "A 40-year-old man has fallen approximately 200 feet to his death while canyoneering with three others at Zion National Park in Utah, authorities confirmed.The incident occurred on Saturday when the… [+1529 chars]",
            style: AppStyles.medium14.copyWith(color: AppColors.primaryWhite),
          ),
          Spacer(),
          CustomButton(),
        ],
      ),
    );
  }
}
