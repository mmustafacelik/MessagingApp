import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messagingapp/core/utils/custom_colors.dart';
import 'package:messagingapp/widgets/custom_button/custom_button.dart';
import 'package:messagingapp/widgets/custom_textformfield/custom_textformfield.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(context),
    );
  }

  getBody(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    var email = false.obs;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/loginbackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 50,
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          iconSize: 50,
                          onPressed: () {
                            var locale = const Locale('en', 'US');
                            Get.updateLocale(locale);
                          },
                          icon: Image.asset(
                              "assets/language/american_us_flag_icon.png"),
                        ),
                        IconButton(
                          iconSize: 50,
                          onPressed: () {
                            var locale = const Locale('tr', 'TR');
                            Get.updateLocale(locale);
                          },
                          icon: Image.asset("assets/language/tr.png"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height / 10),
              Obx(
                () => CustomTextFormField(
                  controller: emailController,
                  width: Get.width / 1.25,
                  onChanged: (value) {
                    if (EmailValidator.validate(value)) {
                      email(true);
                    } else {
                      email(false);
                    }
                  },
                  hintText: 'email'.tr,
                  prefixIcon: const Icon(Icons.mail, color: Colors.blue),
                  suffixIcon: email.value
                      ? const Icon(
                          Icons.check,
                          color: Colors.green,
                        )
                      : const Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                ),
              ),
              SizedBox(height: Get.height / 15),
              CustomButton(
                width: Get.width / 2,
                text: Text(
                  "resetPassword".tr,
                  style: const TextStyle(color: CustomColors.color002060),
                ),
                backgroundColor: CustomColors.colorA4E0AE,
                radiusColor: Colors.white,
                onPressed: () {
                  if (email.value) {
                    //TODO:backend
                    Get.snackbar(
                      "successfulyEmailTitle".tr,
                      "successfulyEmail".tr,
                      icon: const Icon(Icons.person, color: Colors.white),
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.green,
                      borderRadius: 20,
                      margin: const EdgeInsets.all(15),
                      colorText: CustomColors.color22242A,
                      duration: const Duration(milliseconds: 185),
                      isDismissible: true,
                      dismissDirection: DismissDirection.horizontal,
                      forwardAnimationCurve: Curves.easeOutBack,
                    );
                    sleep(
                      const Duration(seconds: 2),
                    );
                    Get.back();
                  } else {
                    Get.snackbar(
                      "emailError".tr,
                      "emailError".tr,
                      icon: const Icon(Icons.close, color: Colors.red),
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: CustomColors.colorDC6868,
                      borderRadius: 20,
                      margin: const EdgeInsets.all(15),
                      colorText: CustomColors.color22242A,
                      duration: const Duration(seconds: 4),
                      isDismissible: true,
                      dismissDirection: DismissDirection.horizontal,
                      forwardAnimationCurve: Curves.easeOutBack,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
