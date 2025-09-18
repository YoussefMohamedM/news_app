import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/views/widgets/home_tab_bar.dart';
import 'package:news_app/features/home/presentation/views/widgets/news_list.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTabBar(),
        SizedBox(height: 16),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: NewsList(),
          ),
        ),
      ],
    );
  }
}
