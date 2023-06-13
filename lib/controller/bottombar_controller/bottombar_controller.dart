import 'package:demo_task/screen/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController{
  RxInt isSelected = 0.obs;
  RxList bottomMenu = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
  ].obs;
}