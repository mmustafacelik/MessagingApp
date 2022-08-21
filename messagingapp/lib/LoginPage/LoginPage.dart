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
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomTextFormField(
                onChanged: (value) => print(value),
                hintText: 'Enter your email',
                prefixIcon: Icons.mail,
              ),
              SizedBox(height: 20),
              CustomButton(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.cyan,
                ),
                text: Text(
                  "Enter",
                  style: TextStyle(color: Colors.cyan),
                ),
                backgroundColor: Colors.white,
                radiusColor: Colors.red,
                onPressed: () {
                  Get.snackbar(
                    "GeeksforGeeks",
                    "Hello everyone",
                    icon: Icon(Icons.person, color: Colors.white),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
                    borderRadius: 20,
                    margin: EdgeInsets.all(15),
                    colorText: Colors.white,
                    duration: Duration(seconds: 4),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.easeOutBack,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
