import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messagingapp/core/utils/custom_colors.dart';
import 'package:messagingapp/widgets/custom_button/custom_button.dart';
import 'package:messagingapp/widgets/custom_textformfield/custom_textformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(context),
    );
  }

  getBody(BuildContext context) {
    var email = false.obs;
    String password = "";
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/loginbackground.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topRight,
                child: Row(
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
              ),
              SizedBox(height: Get.height / 10),
              Obx(
                () => CustomTextFormField(
                  width: Get.width / 1.25,
                  onChanged: (value) {
                    if (EmailValidator.validate(value)) {
                      email(true);
                    } else {
                      email(false);
                    }
                  },
                  hintText: 'email'.tr,
                  prefixIcon: Icons.mail,
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
              SizedBox(
                height: Get.height / 15,
              ),
              CustomTextFormField(
                width: Get.width / 1.25,
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                hintText: 'password'.tr,
                prefixIcon: Icons.lock,
              ),
              const SizedBox(height: 20),
              CustomButton(
                width: Get.width / 2,
                text: Text(
                  "login".tr,
                  style: const TextStyle(color: CustomColors.color002060),
                ),
                backgroundColor: CustomColors.colorA4E0AE,
                radiusColor: Colors.white,
                onPressed: () {
                  Get.snackbar(
                    "GeeksforGeeks",
                    "Hello everyone",
                    icon: const Icon(Icons.person, color: Colors.white),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
                    borderRadius: 20,
                    margin: const EdgeInsets.all(15),
                    colorText: CustomColors.color22242A,
                    duration: const Duration(seconds: 4),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.easeOutBack,
                  );
                },
              ),
              SizedBox(
                height: Get.height / 7,
              ),
              Row(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'app'.tr,
                    style: const TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.colorB0C6BB),
                  ),
                  const SizedBox(width: 20.0, height: 100.0),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Horizon',
                      color: CustomColors.colorB0C6BB,
                      fontWeight: FontWeight.bold,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('fast'.tr),
                        RotateAnimatedText('safe'.tr),
                        RotateAnimatedText('transparent'.tr),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height / 7,
              ),
              const Divider(
                color: Colors.yellow,
                thickness: 1.5,
              ),
              RichText(
                text: TextSpan(
                  text: "${'new to'.tr}   ",
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  /*defining default style is optional */
                  children: [
                    TextSpan(
                      text: 'registery'.tr,
                      style: const TextStyle(
                        color: Colors.cyanAccent,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("object");
                        },
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
