import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messagingapp/ForgotPasswordPage/ForgotPasswordPage.dart';
import 'package:messagingapp/BaseBinding.dart';
import 'package:messagingapp/HomePage/HomePage.dart';
import 'package:messagingapp/RegistryPage/RegistryPage.dart';
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
    TextEditingController passwordController = TextEditingController();
    var email = false.obs;
    var password = false.obs;
    return SafeArea(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/loginbackground.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topRight,
                child: _SelectLaguageArea(),
              ),
              SizedBox(height: Get.height / 10),
              _EmailTextFormField(email: email),
              SizedBox(
                height: Get.height / 15,
              ),
              _PasswordTextArea(
                  passwordController: passwordController, password: password),
              const SizedBox(height: 20),
              const _ButtonArea(),
              SizedBox(height: Get.height / 14),
              const _AnimatedTextArea(),
              SizedBox(
                height: Get.height / 14,
              ),
              const Divider(
                color: Colors.yellow,
                thickness: 1.5,
              ),
              const _RegisteryTextArea(),
              SizedBox(
                height: Get.height / 20,
              ),
              const _PasswordResetArea(),
            ],
          ),
        ),
      ),
    );
  }
}

class _PasswordResetArea extends StatelessWidget {
  const _PasswordResetArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        "forgotPassword".tr,
        style: const TextStyle(
            color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      onTap: () {
        Get.to(ForgotPasswordPage());
      },
    );
  }
}

class _RegisteryTextArea extends StatelessWidget {
  const _RegisteryTextArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "${'new to'.tr}   ",
        style: const TextStyle(
            color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold),
        /*defining default style is optional */
        children: [
          TextSpan(
            text: 'registery'.tr,
            style: const TextStyle(
              color: Colors.cyanAccent,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.to(RegistryPage());
              },
          ),
        ],
      ),
    );
  }
}

class _AnimatedTextArea extends StatelessWidget {
  const _AnimatedTextArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
              RotateAnimatedText('free'.tr),
            ],
          ),
        ),
      ],
    );
  }
}

class _ButtonArea extends StatelessWidget {
  const _ButtonArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
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
        Get.to(HomePage(), binding: BaseBinding());
      },
    );
  }
}

class _PasswordTextArea extends StatelessWidget {
  const _PasswordTextArea({
    Key? key,
    required this.passwordController,
    required this.password,
  }) : super(key: key);

  final TextEditingController passwordController;
  final RxBool password;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomTextFormField(
        width: Get.width / 1.25,
        obscureText: true,
        controller: passwordController,
        onChanged: (value) {
          if (passwordController.text.length > 5) {
            password(false);
          } else {
            password(true);
          }
        },
        hintText: 'password'.tr,
        prefixIcon: password.value
            ? const Icon(Icons.close, color: Colors.red)
            : const Icon(
                Icons.check,
                color: Colors.green,
              ),
      ),
    );
  }
}

class _EmailTextFormField extends StatelessWidget {
  const _EmailTextFormField({
    Key? key,
    required this.email,
  }) : super(key: key);

  final RxBool email;

  @override
  Widget build(BuildContext context) {
    return Obx(
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
    );
  }
}

class _SelectLaguageArea extends StatelessWidget {
  const _SelectLaguageArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          iconSize: 50,
          onPressed: () {
            var locale = const Locale('en', 'US');
            Get.updateLocale(locale);
          },
          icon: Image.asset("assets/language/american_us_flag_icon.png"),
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
    );
  }
}
