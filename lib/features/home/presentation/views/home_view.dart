import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:news_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:news_app/features/home/presentation/views/widgets/news_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      appBar: HomeAppBar(scaffoldKey: scaffoldKey),
      body: NewsView(),
    );
  }
}
