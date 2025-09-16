import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(height: 48, thickness: 1.5, color: AppColors.primaryWhite);
  }
}
