import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/manager/cubits/news_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_bottom_sheet.dart';
import 'package:news_app/features/home/presentation/views/widgets/news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<NewsModel> news = BlocProvider.of<NewsCubit>(context).newsList ?? [];
    return ListView.separated(
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            constraints: BoxConstraints(
              maxHeight: MediaQuery.heightOf(context) * 0.48,
            ),
            context: context,
            builder: (context) => CustomBottomSheet(newsModel: news[index]),
          );
        },
        child: NewsItem(newsModel: news[index]),
      ),
      separatorBuilder: (context, index) => SizedBox(height: 16),
      itemCount: 10,
    );
  }
}
