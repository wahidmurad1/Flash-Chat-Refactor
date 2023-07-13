import 'package:flash_chat/const/color.dart';
import 'package:flash_chat/const/style.dart';
import 'package:flash_chat/const/text.dart';
import 'package:flash_chat/controller/auth_controller.dart';
import 'package:flash_chat/widget/custom_button.dart';
import 'package:flash_chat/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                textEditingController: authController.loginEmailController,
                hintText: hintEmail,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                textEditingController: authController.loginPasswordController,
                hintText: hintPassword,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  onPressed: () {
                    authController.loginUser();
                  },
                  title: loginText,
                  color: blueColor,
                  buttonTextStyles: buttonTextStyleBlack),
            ],
          ),
        ),
      ),
    );
  }
}
