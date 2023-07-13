import 'package:flash_chat/const/color.dart';
import 'package:flash_chat/const/icon.dart';
import 'package:flash_chat/const/style.dart';
import 'package:flash_chat/const/text.dart';
import 'package:flash_chat/screen/login_screen.dart';
import 'package:flash_chat/screen/register_screen.dart';
import 'package:flash_chat/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: const [
                Icon(
                  chatIcon,
                  size: 50,
                  color: blueColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  messageText,
                  style: messageStyle,
                ),
              ],
            ),
            CustomButton(
                onPressed: () {
                  Get.to(LoginScreen());
                },
                title: loginText,
                buttonTextStyles: buttonTextStyleWhite,
                color: blue200),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                onPressed: () {
                  Get.to(RegistrationScreen());
                },
                title: registerText,
                buttonTextStyles: buttonTextStyleWhite,
                color: blueColor),
          ],
        ),
      ),
    );
  }
}
