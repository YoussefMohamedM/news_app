import 'package:flutter/material.dart';
import 'package:news_app/features/home/data/models/category_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/category_item.dart';

import '../../../../../core/utils/app_assets.dart';

class HomeCategoriesList extends StatelessWidget {
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: AppAssets.lightGeneral,
      name: "general",
      direction: Direction.r,
    ),
    CategoryModel(
      image: AppAssets.lightBusiness,
      name: "business",
      direction: Direction.l,
    ),
    CategoryModel(
      image: AppAssets.lightSport,
      name: "sport",
      direction: Direction.r,
    ),
    CategoryModel(
      image: AppAssets.lightTechnology,
      name: "technology",
      direction: Direction.l,
    ),
    CategoryModel(
      image: AppAssets.lightScience,
      name: "science",
      direction: Direction.r,
    ),
    CategoryModel(
      image: AppAssets.lightHealth,
      name: "health",
      direction: Direction.l,
    ),
    CategoryModel(
      image: AppAssets.lightEntertainment,
      name: "entertainment",
      direction: Direction.r,
    ),
  ];

  const HomeCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>
          CategoryItem(categoryModel: categories[index]),
      separatorBuilder: (context, index) => SizedBox(height: 16),
      itemCount: categories.length,
    );
  }
}
