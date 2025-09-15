import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/views/widgets/home_tab_bar.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [HomeTabBar()]);
  }
}
