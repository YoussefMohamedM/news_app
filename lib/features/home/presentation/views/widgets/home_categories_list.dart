import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/views/widgets/category_item.dart';

import '../../../../../core/utils/app_assets.dart';

class HomeCategoriesList extends StatelessWidget {
  final List<String> categories = const [
    AppAssets.lightGeneral,
    AppAssets.lightBusiness,
    AppAssets.lightSport,
    AppAssets.lightTechnology,
    AppAssets.lightScience,
    AppAssets.lightHealth,
    AppAssets.lightEntertainment,
  ];

  const HomeCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>
          CategoryItem(image: categories[index], index: index),
      separatorBuilder: (context, index) => SizedBox(height: 16),
      itemCount: categories.length,
    );
  }
}
