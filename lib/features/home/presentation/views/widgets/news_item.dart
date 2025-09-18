import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';
import 'package:news_app/features/home/data/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/news_image.dart';

class NewsItem extends StatelessWidget {
  final NewsModel newsModel;

  const NewsItem({super.key, required this.newsModel});

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
          NewsImage(image: newsModel.urlToImage ?? ""),
          SizedBox(height: 10),
          Text(newsModel.title, style: AppStyles.bold16),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "By : ${newsModel.author ?? "Unknown"}",
                style: AppStyles.medium12,
              ),
              Text(newsModel.publishedAt ?? "", style: AppStyles.medium12),
            ],
          ),
        ],
      ),
    );
  }
}
