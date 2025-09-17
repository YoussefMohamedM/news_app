import 'package:flutter/cupertino.dart';
import 'package:news_app/core/utils/app_colors.dart';

abstract class AppStyles {
  static const TextStyle bold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlack,
  );
  static const TextStyle medium12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Color(0xFFA0A0A0),
  );
  static const TextStyle medium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryBlack,
  );
  static const TextStyle medium20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryBlack,
  );
  static const TextStyle medium24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Color(0xFFFFFFFF),
  );
  static const TextStyle bold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlack,
  );
  static const TextStyle bold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color(0xFFFFFFFF),
  );
  static const TextStyle regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryBlack,
  );
  static const TextStyle semiBold64 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryBlack,
  );
}
