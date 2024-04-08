import 'package:flutter/material.dart';
import 'package:my_folio/constants/app_colors.dart';
import 'package:my_folio/constants/app_icons.dart';
import 'package:my_folio/widgets/gradient_text.dart';
import 'package:my_folio/widgets/primary_text.dart';

class MyProjectsPage extends StatelessWidget {
  MyProjectsPage({super.key});

  // final _myProjects = [
  //   AppIcons.flutter,
  //   AppIcons.github,
  // ];

  final _myProjects = [
    {
      "icon": AppIcons.hrms,
      "title": "HRMS",
      "description":
          "To streamline onboarding procedures with digital documentation, training modules, and compliance checks to ensure new hires are quickly integrated into the workforce and can track daily attendance of riders.",
      "technologies": ["Flutter", "Spring Boot", "Java", "Dart"]
    },
    {
      "icon": AppIcons.ams,
      "title": "AMS",
      "description":
          "To monitor the location, status, and performance of delivery vehicles in real-time using GPS tracking technology and providing a options to charge a vehicle batteries and raise a tickets any assets damage.",
      "technologies": ["Flutter", "Spring Boot", "Java", "Dart"]
    },
    {
      "icon": AppIcons.penalty,
      "title": "Penalty Management",
      "description":
          "To identify instances of non-compliance, misuse, or negligence that may lead to penalties through automated alerts, notifications, and exception reports.",
      "technologies": ["Flutter", "Spring Boot", "Java", "Dart", "MongoDB"]
    },
    {
      "icon": AppIcons.digitization,
      "title": "Digitization",
      "description":
          "To digitize the process of calculating and disbursing rider payouts using dedicated payout management systems. Capture data on delivery volumes, routes completed, and performance metrics to calculate accurate payout amounts based on predefined rates and incentives.",
      "technologies": ["Flutter", "Spring Boot", "Java", "Dart", "MongoDB"]
    }
  ];

  // final _usedTechnologies = [
  //   "Flutter",
  //   "Firebase",
  // ];

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PrimaryText(
                  "My",
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  width: 5,
                ),
                GradientText(
                  "Projects",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                  gradient: LinearGradient(colors: [
                    Color(0xff28269b),
                    Color(0xff514BFF),
                  ]),
                ),
                const SizedBox(
                  width: 8,
                ),
                Image.asset(
                  AppIcons.graduate,
                  width: 32,
                  height: 32,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            PrimaryText(
              "I've embarked on numerous projects throughout the year, but only authorized individuals within the organization or company that owns the project have access to the source code. So below I've explained each module usecases that I've developed.",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontColor: AppColors.grey700Color,
            ),
            SizedBox(
              height: 25,
            ),
            ListView.builder(
              shrinkWrap: true,
              controller: scrollController,
              itemCount: _myProjects.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          _myProjects[index]["icon"].toString(),
                          width: 30,
                          height: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    PrimaryText(
                      _myProjects[index]["title"].toString(),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    PrimaryText(
                      _myProjects[index]["description"].toString(),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontColor: AppColors.grey700Color,
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        for (var item in _myProjects[index]["technologies"]
                            as List<String>)
                          Card(
                            color: AppColors.primaryMaterialColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            margin: const EdgeInsets.only(
                              right: 10,
                              top: 10,
                            ),
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 5,
                              ),
                              child: PrimaryText(
                                item,
                                fontColor: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                          )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // Row(
                    //   children: [
                    //     PrimaryText(
                    //       "Live Link",
                    //       fontSize: 15,
                    //       fontColor: Colors.blue,
                    //     ),
                    //     SizedBox(
                    //       width: 5,
                    //     ),
                    //     Icon(
                    //       Icons.arrow_forward_rounded,
                    //       size: 18,
                    //       color: Colors.blue,
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
