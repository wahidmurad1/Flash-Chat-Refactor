import 'package:flash_chat/const/color.dart';
import 'package:flash_chat/const/style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, required this.hintText, required this.textEditingController});
  final String hintText;
  final TextEditingController textEditingController;
  final FocusNode noKeyboardShow = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
          textAlign: TextAlign.center,
          controller: textEditingController,
          focusNode: noKeyboardShow,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintTextStyle,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 16.0),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(
                color: greyColor,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(
                color: blueColor,
              ),
            ),
          )),
    );
  }
}
