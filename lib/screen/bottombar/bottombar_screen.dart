import 'package:demo_task/config/images_path.dart';
import 'package:demo_task/widget/bottombar_widget/bottom_tab_option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/bottombar_controller/bottombar_controller.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key}) : super(key: key);

  final bottomBarController = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Obx(() =>
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                bottomOption(
                  context: context,
                  optionIcon: ImagePath.homeIcon,
                  isSelected:
                  bottomBarController.isSelected.value == 0 ? true : false,
                  onTap: () {
                    bottomBarController.isSelected.value = 0;
                  },
                ),
                bottomOption(
                  context: context,
                  optionIcon: ImagePath.cardIcon,
                  isSelected:
                  bottomBarController.isSelected.value == 1 ? true : false,
                  onTap: () {
                    bottomBarController.isSelected.value = 1;
                  },
                ),
                bottomOption(
                  context: context,
                  optionIcon: ImagePath.calenderIcon,
                  isSelected:
                  bottomBarController.isSelected.value == 2 ? true : false,
                  onTap: () {
                    bottomBarController.isSelected.value = 2;
                  },
                ),
                bottomOption(
                  context: context,
                  optionIcon: ImagePath.notificationIcon,
                  isNotificationOption: true,
                  isSelected:
                  bottomBarController.isSelected.value == 3 ? true : false,
                  onTap: () {
                    bottomBarController.isSelected.value = 3;
                  },
                ),
              ],
            )
        ),
      ),
      body: Obx(() => bottomBarController.bottomMenu[bottomBarController.isSelected.value]),
    );
  }
}
