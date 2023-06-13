import 'package:demo_task/config/app_colors.dart';
import 'package:demo_task/config/app_text_style.dart';
import 'package:demo_task/widget/list_title_design.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile Details", style: AppTextStyle.boldText.copyWith(fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: 120,
                decoration: BoxDecoration(
                  color: AppColors.lightColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80"),
                    ),
                    const SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Deep Rupareliya", style: AppTextStyle.boldText,),
                        Text("Male", style: AppTextStyle.mediumText.copyWith(color: AppColors.greyColor),)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 7,),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: 100,
                decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Text("Share your\npatient profile", style: AppTextStyle.boldText.copyWith(fontSize: 17, color: AppColors.primaryColor),),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.tealColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              30), // Set the radius value
                        ),
                      ),
                      child: Text(
                        'Share profile',
                        style: TextStyle(
                            fontSize: 17,
                            color: AppColors.primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Patient details", style: AppTextStyle.boldText,),
              ),
              listTitleDesign(title: "Name", description: "Deep"),
              listTitleDesign(title: "Surname", description: "Rupareliya"),
              listTitleDesign(title: "Date of birth", description: "July 16, 1990 (30y)"),
              listTitleDesign(title: "City", description: "India"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Share profile", style: AppTextStyle.boldText,),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.lightColor,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text(DateFormat("MMM d\nh:mm a").format(DateTime.now())),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Deep Rupareliya", style: AppTextStyle.boldText,),
                      Text("7 Views", style: AppTextStyle.boldText.copyWith(fontSize: 15, color: AppColors.tealColor),),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
