import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/views/widgets/news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => NewsItem(),
      separatorBuilder: (context, index) => SizedBox(height: 16),
      itemCount: 10,
    );
  }
}
