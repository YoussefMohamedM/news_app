import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu, color: AppColors.darkGrey),
      ),
      title: Text("Home", style: AppStyles.medium20),
      actions: [
        IconButton(
          onPressed: () {},
          icon: ImageIcon(AssetImage(AppAssets.searchIcon)),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
