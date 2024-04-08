import 'dart:developer';

import 'package:emailjs/emailjs.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ContactMeController extends GetxController {
  final nameTEController = TextEditingController();
  final mailTEController = TextEditingController();
  final messageTEController = TextEditingController();

  final isLoading = false.obs;

  sendMail(Map<String, dynamic> templateParams) async {
    isLoading.value = true;
    try {
      await EmailJS.send(
        'service_h0rr2un',
        'template_33qhavj',
        templateParams,
        const Options(
          publicKey: 'vpi6iVhmRHzxw7zoZ',
          privateKey: '2ovtPiLv3oCsCfTT1Ps_l',
        ),
      );
      nameTEController.text = "";
      mailTEController.text = "";
      messageTEController.text = "";
      isLoading.value = false;
      return Future(() => "Message sent successfully");
    } catch (error) {
      log(error.toString());
      isLoading.value = false;
      return Future(() => "Couldn't able to send a message");
    }
  }
}
