import 'package:flutter/material.dart';
import 'package:news_app/features/home/data/models/category_model.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class CategoryItemButton extends StatelessWidget {
  final Direction direction;

  const CategoryItemButton({super.key, required this.direction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: direction == Direction.r
          ? EdgeInsets.only(right: 16, bottom: 16)
          : EdgeInsets.only(left: 16, bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.primaryWhite.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(84),
      ),
      child: direction == Direction.r
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 9, 10, 9),
                  child: Text(
                    "View All",
                    style: AppStyles.medium24.copyWith(
                      color: AppColors.primaryBlack,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 27,
                  backgroundColor: AppColors.primaryWhite,
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundColor: AppColors.primaryWhite,
                  child: Icon(Icons.arrow_back_ios),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 9, 16, 9),
                  child: Text(
                    "View All",
                    style: AppStyles.medium24.copyWith(
                      color: AppColors.primaryBlack,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
