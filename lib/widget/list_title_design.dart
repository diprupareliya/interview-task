import 'package:demo_task/config/app_colors.dart';
import 'package:demo_task/config/app_text_style.dart';
import 'package:flutter/material.dart';

Widget listTitleDesign({
  required String title,
  required String description,
}){
  return ListTile(
    minVerticalPadding: 0,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    leading: Text(title, style: AppTextStyle.boldText.copyWith(color: AppColors.greyColor, fontSize: 18),),
    trailing: Text(description, style: AppTextStyle.mediumText.copyWith(color: AppColors.blueColor, fontSize: 16),),
  );
}