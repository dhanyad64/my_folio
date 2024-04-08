import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:my_folio/constants/app_colors.dart';
import 'package:my_folio/constants/app_icons.dart';
import 'package:my_folio/constants/app_images.dart';
import 'package:my_folio/widgets/gradient_text.dart';
import 'package:my_folio/widgets/primary_text.dart';
import 'package:timelines/timelines.dart';

class AboutMePage extends StatelessWidget {
  AboutMePage({super.key});

  final _mySkills = [
    AppIcons.dart,
    AppIcons.flutter,
    AppIcons.java,
    AppIcons.selenium,
    AppIcons.github,
  ];

  final _workExperience = [
    {
      "designation": "Flutter Developer",
      "company": "Entoo Logistics",
      "timeline": "Mar/2023 - Present",
      "description": [
        "Embarked career in development while leveraging testing skills, seeking guidance and mentorship from seasoned developers within organization. Learning from their insights and experiences significantly accelerated learning journey, providing invaluable guidance along way.",
        "Gather requirements by meeting with stakeholders, clients, or users to understand their needs and expectations."
      ],
      "icon": AppImages.entooOfficialLogo
    },
    {
      "designation": "Test Engineer",
      "company": "Entoo Logistics",
      "timeline": "Jan/2023 - Apr/2024",
      "description": [
        "Developed and maintained test and evaluation strategies for testing to show operational readiness and suitability with planned project decision points.",
        "Developed comprehensive test plans and workforce breakdown structures for complete systems.",
        "Continuously acquiring new testing skills enables to promptly identify and log at least 20% of application bugs within hours."
      ],
      "icon": AppImages.entooOfficialLogo
    },
  ];

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        controller: scrollController,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PrimaryText(
            //   "About Me",
            //   fontSize: 18,
            //   fontWeight: FontWeight.w500,
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            Row(
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    PrimaryText(
                      "Hello I'm ",
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    GradientText(
                      "Dhanya",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff28269b),
                        Color(0xff514BFF),
                      ]),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  AppIcons.wavingHand,
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const PrimaryText(
              "Innovative and results-driven Flutter Developer with 1+ years of experience in designing and implementing cross-platform mobile applications and pursuing as test Engineer with 1.3+ years of experience in ensuring the quality and reliability of software products.",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontColor: AppColors.grey700Color,
            ),
            const SizedBox(
              height: 25,
            ),
            const PrimaryText(
              "My Skills",
              fontSize: 18,
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                for (var item in _mySkills)
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    margin: const EdgeInsets.only(
                      right: 15,
                      top: 15,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        item,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const PrimaryText(
              "Work Experience",
              fontSize: 18,
            ),
            const SizedBox(
              height: 5,
            ),
            const PrimaryText(
              "Passionate about staying updated with the latest technologies and trends in mobile app development to drive innovation and exceed client expectations. Here's the rundown:",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontColor: AppColors.grey700Color,
            ),
            const SizedBox(
              height: 20,
            ),
            Timeline.tileBuilder(
              controller: scrollController,
              shrinkWrap: true,
              theme: TimelineTheme.of(context).copyWith(
                nodePosition: 0,
                connectorTheme: TimelineTheme.of(context)
                    .connectorTheme
                    .copyWith(thickness: 1.5, color: Colors.white),
                indicatorTheme:
                    TimelineTheme.of(context).indicatorTheme.copyWith(
                          size: 10.0,
                          position: 0.5,
                        ),
              ),
              builder: TimelineTileBuilder.connected(
                indicatorBuilder: (context, index) {
                  return SizedBox(
                    height: 400.0,
                    child: TimelineNode(
                      indicator: Card(
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              _workExperience[index]["icon"].toString(),
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                      ),
                      startConnector: SolidLineConnector(
                        color: AppColors.primaryMaterialColor,
                      ),
                      endConnector: SolidLineConnector(
                        color: AppColors.primaryMaterialColor,
                      ),
                      // startConnector: DecoratedLineConnector(
                      //   decoration: BoxDecoration(
                      //     gradient: LinearGradient(
                      //       begin: Alignment.topCenter,
                      //       end: Alignment.bottomCenter,
                      //       colors: [
                      //         Colors.blue,
                      //         Colors.lightBlueAccent[100] ?? Colors.white
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // endConnector: DecoratedLineConnector(
                      //   decoration: BoxDecoration(
                      //     gradient: LinearGradient(
                      //       begin: Alignment.topCenter,
                      //       end: Alignment.bottomCenter,
                      //       colors: [
                      //         Colors.lightBlueAccent[100] ?? Colors.white,
                      //         Colors.blue,
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ),
                  );
                },
                contentsBuilder: (context, index) => SizedBox(
                  width: double.infinity,
                  child: Card(
                    margin: EdgeInsets.only(
                      left: 15,
                      bottom: 10,
                      top: 20,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            _workExperience[index]["designation"].toString(),
                            fontSize: 18,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          PrimaryText(
                            "${_workExperience[index]["timeline"]} in ${_workExperience[index]["company"]}",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          HtmlWidget(
                            """<ul style='padding-left: 15px; color: #757575;'>${convertListToHTMLLi(_workExperience[index]["description"] as List<String>)}</ul>""",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                itemCount: _workExperience.length,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  convertListToHTMLLi(List<String> lst) {
    var lis = "";
    for (var l in lst) {
      lis += "<li>$l</li>";
    }
    return lis;
  }
}
