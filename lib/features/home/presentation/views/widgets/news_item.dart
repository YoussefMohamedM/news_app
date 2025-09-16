import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';

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
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              width: double.infinity,
              "https://www.fcbarcelona.com/photo-resources/2021/08/09/d4236e65-4502-4cca-816d-a97c441abdac/Camp-nou-1.jpg?width=1200&height=750",
            ),
          ),
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
