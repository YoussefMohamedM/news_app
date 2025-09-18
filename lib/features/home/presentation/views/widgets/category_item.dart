import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/manager/cubits/news_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/category_item_button.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final int index;

  const CategoryItem({super.key, required this.image, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: index % 2 == 0 ? Alignment.bottomRight : Alignment.bottomLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(24),
          child: Image.asset(image),
        ),
        InkWell(
          onTap: () {
            BlocProvider.of<NewsCubit>(context).getNews(category: "sports");
          },
          child: CategoryItemButton(index: index),
        ),
      ],
    );
  }
}
