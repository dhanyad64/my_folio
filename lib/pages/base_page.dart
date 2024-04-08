import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_folio/controllers/base_controller.dart';
import 'package:my_folio/pages/about_me_page.dart';
import 'package:my_folio/pages/contact_me_page.dart';
import 'package:my_folio/pages/home_page.dart';
import 'package:my_folio/pages/my_projects_page.dart';
import 'package:my_folio/widgets/home/bottom_bar_item_widget.dart';

class BasePage extends GetView<BaseController> {
  BasePage({super.key}) {
    Get.put(BaseController());
  }

  final _pages = <Widget>[
    const HomePage(),
    AboutMePage(),
    MyProjectsPage(),
    ContactMePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffcabfe8),
                Color(0xFFffffff),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
            ),
          ),
          child: Column(
            children: [
              Obx(() {
                return Expanded(
                  child: _pages[controller.selectedBottomBarIndex.value],
                );
              }),
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BottomBarItemWidget(
                      icon: Icons.home,
                      title: "Home",
                      selectedBottomBarIndex: controller.selectedBottomBarIndex,
                      itemIndex: 0,
                    ),
                    BottomBarItemWidget(
                      icon: Icons.person_search_rounded,
                      title: "About Me",
                      selectedBottomBarIndex: controller.selectedBottomBarIndex,
                      itemIndex: 1,
                    ),
                    BottomBarItemWidget(
                      icon: Icons.school_rounded,
                      title: "My Projects",
                      selectedBottomBarIndex: controller.selectedBottomBarIndex,
                      itemIndex: 2,
                    ),
                    BottomBarItemWidget(
                      icon: Icons.contact_mail_rounded,
                      title: "Contact Me",
                      selectedBottomBarIndex: controller.selectedBottomBarIndex,
                      itemIndex: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
