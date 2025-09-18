import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/service_locator.dart';
import 'package:news_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:news_app/features/home/presentation/manager/cubits/news_cubit.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:news_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:news_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:news_app/features/home/presentation/views/widgets/news_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(getIt.get<HomeRepoImplementation>()),
      child: Scaffold(
        key: scaffoldKey,
        drawer: CustomDrawer(),
        appBar: HomeAppBar(scaffoldKey: scaffoldKey),
        body: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            if (state is NewsSuccess) {
              return NewsViewBody();
            } else if (state is NewsLoading) {
              return Center(child: CircularProgressIndicator());
            } else {
              return HomeViewBody();
            }
          },
        ),
      ),
    );
  }
}
