import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';
import 'package:news_app/features/home/presentation/views/widgets/news_image.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primaryBlack),
      ),
      child: Column(
        children: [
          NewsImage(),
          SizedBox(height: 10),
          Text(
            "40-year-old man falls 200 feet to his death while canyoneering at national park",
            style: AppStyles.bold16,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("By : Jon Haworth", style: AppStyles.medium12),
              Text("15 minutes ago", style: AppStyles.medium12),
            ],
          ),
        ],
      ),
    );
  }
}
