import 'package:flash_chat/const/color.dart';
import 'package:flash_chat/controller/auth_controller.dart';
import 'package:flash_chat/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueColor,
        body: Column(children: [
          IconButton(
              onPressed: () {
                authController.signout();
              },
              icon: Icon(
                Icons.logout,
                color: whiteColor,
              )),
        ]),
      ),
    );
  }
}
