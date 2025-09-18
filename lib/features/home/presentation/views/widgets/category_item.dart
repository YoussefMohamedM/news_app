import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/models/category_model.dart';
import 'package:news_app/features/home/presentation/manager/cubits/news_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/category_item_button.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: categoryModel.direction == Direction.r
          ? Alignment.bottomRight
          : Alignment.bottomLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(24),
          child: Image.asset(categoryModel.image),
        ),
        InkWell(
          onTap: () {
            BlocProvider.of<NewsCubit>(
              context,
            ).getNews(category: categoryModel.name);
          },
          child: CategoryItemButton(direction: categoryModel.direction),
        ),
      ],
    );
  }
}
