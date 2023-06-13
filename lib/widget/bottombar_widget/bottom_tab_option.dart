import 'package:demo_task/config/app_colors.dart';
import 'package:demo_task/config/app_text_style.dart';
import 'package:flutter/material.dart';

Widget bottomOption(
    {@required BuildContext? context,
    required String optionIcon,
    required bool isSelected,
    bool? isNotificationOption,
    Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: isSelected
          ? BoxDecoration(color: AppColors.tealColor, shape: BoxShape.circle)
          : null,
      child: isNotificationOption == true
          ? Stack(
        alignment: Alignment.topRight,
              children: [
                Image.asset(
                  optionIcon,
                  height: isSelected ? 20 : 25,
                  color:
                      isSelected ? AppColors.primaryColor : AppColors.greyColor,
                ),
                CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.red,
                  child: Text("3", style: AppTextStyle.reagulerText.copyWith(fontSize: 11, color: Colors.white),),
                )
              ],
            )
          : Image.asset(
              optionIcon,
              height: isSelected ? 20 : 25,
              color: isSelected ? AppColors.primaryColor : AppColors.greyColor,
            ),
    ),
  );
}
