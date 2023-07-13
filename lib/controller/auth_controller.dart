import 'package:flash_chat/screen/chat_screen.dart';
import 'package:flash_chat/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  final auth = FirebaseAuth.instance;
  List<String> allUserData = [];

  registerUser() async {
    try {
      final newUser = await auth.createUserWithEmailAndPassword(
          email: registerEmailController.text,
          password: registerPasswordController.text);
      if (newUser != null) {
        Get.to(() => ChatScreen());
        return newUser;
      }
    } catch (e) {
      print(e);
    }
  }

  loginUser() async {
    try {
      final loginUser = await auth.signInWithEmailAndPassword(
          email: loginEmailController.text,
          password: loginPasswordController.text);
      if (loginUser != null) {
        Get.to(() => ChatScreen());
      }
      //return loginUser;
    } catch (e) {
      print(e);
    }
  }

  currentUserData() async {
    final user = await auth.currentUser;
    // FireBaseUser loggedInUser;
    if (user != null) {
      // print(user.email);
      allUserData.add(user.email.toString());
      print(allUserData);
      //return user.email;
    }
  }

  getDataAndAddCurrentUserEmail() async {
    // Perform your data retrieval operations here
    // ...

    await currentUserData();

    // Now, the current user's email is added to the allUserData list
    //print(allUserData);
  }

  signout() {
    auth.signOut();
    Get.offAll(() => WelcomeScreen());
  }
}
