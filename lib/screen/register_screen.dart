import 'package:flash_chat/const/color.dart';
import 'package:flash_chat/const/style.dart';
import 'package:flash_chat/const/text.dart';
import 'package:flash_chat/controller/auth_controller.dart';
import 'package:flash_chat/screen/chat_screen.dart';
import 'package:flash_chat/widget/custom_button.dart';
import 'package:flash_chat/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});
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
                textEditingController: authController.registerEmailController,
                hintText: hintEmail,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                textEditingController:
                    authController.registerPasswordController,
                hintText: hintPassword,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  onPressed: () async {
                    await authController.registerUser();
                    await authController.currentUserData();
                    await authController.getDataAndAddCurrentUserEmail();
                  },
                  title: registerText,
                  color: blueColor,
                  buttonTextStyles: buttonTextStyleBlack),
            ],
          ),
        ),
      ),
    );
  }
}
