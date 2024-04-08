import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:my_folio/constants/app_colors.dart';
import 'package:my_folio/constants/app_icons.dart';
import 'package:my_folio/controllers/contact_me_controller.dart';
import 'package:my_folio/widgets/gradient_text.dart';
import 'package:my_folio/widgets/primary_text.dart';
import 'package:my_folio/widgets/primary_text_field.dart';

class ContactMePage extends GetView<ContactMeController> {
  ContactMePage({super.key}) {
    Get.put(ContactMeController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PrimaryText(
                  "Contact",
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  width: 5,
                ),
                GradientText(
                  "Me",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                  gradient: LinearGradient(colors: [
                    Color(0xff28269b),
                    Color(0xff514BFF),
                  ]),
                ),
                // const SizedBox(
                //   width: 8,
                // ),
                // Image.asset(
                //   AppIcons.wavingHand,
                //   width: 30,
                //   height: 30,
                // ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const PrimaryText(
              "Please contact me directly at dhanyadinesh64@gmail.com or through this form",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontColor: AppColors.grey700Color,
            ),
            const SizedBox(
              height: 25,
            ),
            PrimaryTextField(
              hint: "Your Name",
              controller: controller.nameTEController,
            ),
            const SizedBox(
              height: 15,
            ),
            PrimaryTextField(
              hint: "Your Email",
              controller: controller.mailTEController,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 200,
              child: PrimaryTextField(
                hint: "Your Message",
                maxLines: 10,
                controller: controller.messageTEController,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Obx(() {
                return controller.isLoading.value
                    ? CircularProgressIndicator(
                        color: AppColors.primaryMaterialColor,
                      )
                    : InkWell(
                        onTap: () {
                          if (controller.nameTEController.text.isEmpty) {
                            Fluttertoast.showToast(msg: "Name is empty");
                            return;
                          }

                          if (controller.mailTEController.text.isEmpty) {
                            Fluttertoast.showToast(msg: "Mail id is empty");
                            return;
                          }

                          if (controller.messageTEController.text.isEmpty) {
                            Fluttertoast.showToast(msg: "Message is empty");
                            return;
                          }

                          var params = {
                            "from_name": controller.nameTEController.text,
                            "to_name": "Dhanya D",
                            "from_email": controller.mailTEController.text,
                            "to_email": 'dhanyadinesh64@gmail.com',
                            "message": controller.messageTEController.text,
                          };
                          controller.sendMail(params).then((value) {
                            Fluttertoast.showToast(msg: value);
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                          width: 150,
                          decoration: BoxDecoration(
                              color: AppColors.primaryMaterialColor,
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Expanded(
                                child: PrimaryText(
                                  "Submit",
                                  fontWeight: FontWeight.w500,
                                  fontColor: Colors.white,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Image.asset(
                                AppIcons.send,
                                width: 22,
                                height: 22,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      );
              }),
            )
          ],
        ),
      ),
    );
  }
}
