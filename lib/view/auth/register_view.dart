import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_market_app/core/viewmodel/auto_view_model.dart';
import 'package:shopping_market_app/view/auth/login_screen.dart';
import 'package:shopping_market_app/view/widget/custom_button.dart';
import 'package:shopping_market_app/view/widget/custom_button_social.dart';
import 'package:shopping_market_app/view/widget/custom_text.dart';
import 'package:shopping_market_app/view/widget/custom_text_form_field.dart';

import '../../constance.dart';

class RegisterView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.to(LoginScreen()),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            right: 20,
            left: 20,
          ),
          child: Form(
            key: _globalKey,
            child: Column(
              children: [
                CustomText(
                  text: "Sign Up,",
                  fontSize: 30,
                ),
                CustomText(
                  text: 'Sign in to Continue',
                  fontSize: 14,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  text: 'Name',
                  hintText: 'Name',
                  onSave: (value) {
                    controller.name = value;
                  },
                  validator: (value) {},
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  text: 'Email',
                  hintText: 'Email',
                  onSave: (value) {
                    controller.email = value;
                  },
                  validator: (value) {},
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextFormField(
                  text: 'Password',
                  hintText: '*********',
                  onSave: (value) {
                    controller.password = value;
                  },
                  validator: (value) {},
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onPressed: () {
                    // Get.to(SecondScreen());
                    _globalKey.currentState.save();
                    if (_globalKey.currentState.validate()) {
                      controller.createAccountWithEmailAndPassword();
                    }
                  },
                  text: 'Sign Up',
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }
}
