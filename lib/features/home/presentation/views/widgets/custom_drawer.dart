import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/utils/app_assets.dart';
import 'package:news_app/core/utils/app_colors.dart';
import 'package:news_app/core/utils/app_styles.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_divider.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_drop_menu.dart';
import 'package:news_app/features/home/presentation/views/widgets/drawer_options.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.widthOf(context) * 269 / 393,
      backgroundColor: AppColors.primaryBlack,
      shape: RoundedRectangleBorder(),
      child: Column(
        children: [
          Container(
            height: MediaQuery.heightOf(context) * 166 / 852,
            color: AppColors.primaryWhite,
            child: Center(child: Text("News App", style: AppStyles.bold24)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              children: [
                InkWell(
                  onTap: () => GoRouter.of(context).pop(),
                  child: DrawerOptions(
                    icon: AppAssets.homeIcon,
                    title: "Go To Home",
                  ),
                ),
                CustomDivider(),
                DrawerOptions(icon: AppAssets.themeIcon, title: "Theme"),
                SizedBox(height: 8),
                CustomDropMenu(),
                CustomDivider(),
                DrawerOptions(icon: AppAssets.languageIcon, title: "Language"),
                SizedBox(height: 8),
                CustomDropMenu(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
