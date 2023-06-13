import 'package:demo_task/config/app_colors.dart';
import 'package:demo_task/config/app_text_style.dart';
import 'package:demo_task/config/images_path.dart';
import 'package:demo_task/controller/home_controller/home_controller.dart';
import 'package:demo_task/screen/prodileDetails/profile_details_screen.dart';
import 'package:demo_task/widget/network_image_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final homeController = Get.put(HomeController());

  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Row(
              children: [
                netWorkImageView(
                    imagePath:
                        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
                    imageSize: 30),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: AppTextStyle.mediumText
                          .copyWith(color: AppColors.greyColor),
                    ),
                    Text(
                      "Deep",
                      style: AppTextStyle.boldText,
                    )
                  ],
                ),
                const Spacer(),
                Image.asset(
                  ImagePath.menuIcon,
                  height: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming consultations",
                  style: AppTextStyle.boldText,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: AppColors.blueColor,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                padding: const EdgeInsets.only(left: 16, right: 10),
                itemCount: homeController.consultationList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const ProfileDetailsScreen())));
                    },
                    child: Container(
                      height: 190,
                      width: 160,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: homeController.consultationList[index]
                                  ["callJoinStatus"]
                              ? AppColors.blueColor
                              : AppColors.lightColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              netWorkImageView(
                                  imagePath:
                                      "${homeController.consultationList[index]["profile"]}",
                                  imageSize: 20),
                              Column(
                                children: [
                                  Text(
                                    DateFormat("h:ma").format(homeController
                                        .consultationList[index]["datetime"]),
                                    style: AppTextStyle.boldText.copyWith(
                                      fontSize: 15,
                                      color:
                                          homeController.consultationList[index]
                                                  ["callJoinStatus"]
                                              ? AppColors.primaryColor
                                              : AppColors.tealColor,
                                    ),
                                  ),
                                  Text(
                                    DateFormat("MMM d").format(homeController
                                        .consultationList[index]["datetime"]),
                                    style: AppTextStyle.reagulerText.copyWith(
                                      fontSize: 13,
                                      color:
                                          homeController.consultationList[index]
                                                  ["callJoinStatus"]
                                              ? AppColors.primaryColor
                                              : AppColors.greyColor,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${homeController.consultationList[index]["name"]}",
                            style: AppTextStyle.boldText.copyWith(
                              fontSize: 18,
                              color: homeController.consultationList[index]
                                      ["callJoinStatus"]
                                  ? AppColors.primaryColor
                                  : AppColors.blackColor,
                            ),
                          ),
                          const Spacer(),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: homeController
                                        .consultationList[index]["callJoinStatus"]
                                    ? AppColors.tealColor
                                    : AppColors.primaryColor,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30), // Set the radius value
                                ),
                              ),
                              child: Text(
                                'Join the call',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: homeController.consultationList[index]
                                            ["callJoinStatus"]
                                        ? AppColors.primaryColor
                                        : AppColors.blueColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Patient profile",
                  style: AppTextStyle.boldText,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: AppColors.blueColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
                padding: const EdgeInsets.only(left: 16),
                itemCount: homeController.consultationList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return index == 0
                      ? Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.tealColor,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: netWorkImageView(
                              imageSize: 30,
                              imagePath: homeController.consultationList[index]
                                  ["profile"]),
                        );
                }),
          ),
          Container(
            height: 70,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
                color: AppColors.lightColor,
                borderRadius: BorderRadius.circular(40)),
            child: TabBar(
                controller: tabController,
                physics: const NeverScrollableScrollPhysics(),
                labelColor: AppColors.primaryColor,
                unselectedLabelColor: AppColors.blackColor,
                labelStyle: AppTextStyle.boldText.copyWith(fontSize: 18),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(30)),
                tabs: const [
                  Tab(
                    child: Text("Last enquire"),
                  ),
                  Tab(
                    child: Text("Report"),
                  )
                ]),
          ),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            ListView.builder(
                itemCount: homeController.consultationList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 60,
                          child: VerticalDivider(
                            color: AppColors.tealColor,
                            thickness: 4,
                          ),
                        ),
                        netWorkImageView(
                            imageSize: 25,
                            imagePath: homeController.consultationList[index]
                                ["profile"]),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${homeController.consultationList[index]["name"]}",
                              style: AppTextStyle.boldText,
                            ),
                            Text(
                              "Video Creator",
                              style: AppTextStyle.mediumText.copyWith(
                                  color: AppColors.greyColor, fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
            Container()
          ]))
        ],
      ),
    ));
  }
}
