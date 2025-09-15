import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: TabBar(
        padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        labelPadding: EdgeInsets.only(right: 16),
        labelColor: AppColors.primaryBlack,
        labelStyle: AppStyles.bold16,
        unselectedLabelColor: AppColors.primaryBlack,
        unselectedLabelStyle: AppStyles.medium14,
        indicatorColor: AppColors.primaryBlack,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 2,
        indicatorPadding: EdgeInsets.zero,
        dividerHeight: 0,
        tabs: [
          Tab(child: Text("ABC News")),
          Tab(child: Text("Aftenposten")),
          Tab(child: Text("ANSA.it")),
          Tab(child: Text("Ary News")),
          Tab(child: Text("Axios")),
        ],
      ),
    );
  }
}
