import 'package:demo_task/config/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle{
  static TextStyle reagulerText = TextStyle(
    fontSize: 15,
    color: AppColors.blackColor,
  );

  static TextStyle mediumText = TextStyle(
    fontSize: 18,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w500
  );

  static TextStyle boldText = TextStyle(
      fontSize: 20,
      color: AppColors.blackColor,
      fontWeight: FontWeight.bold
  );
}