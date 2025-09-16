import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class DrawerOptions extends StatelessWidget {
  final String icon, title;

  const DrawerOptions({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageIcon(AssetImage(icon), color: AppColors.primaryWhite),
        SizedBox(width: 8),
        Text(title, style: AppStyles.bold20),
      ],
    );
  }
}
