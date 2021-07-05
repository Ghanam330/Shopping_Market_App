import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_market_app/constance.dart';
import 'package:shopping_market_app/core/viewmodel/auto_view_model.dart';
import 'package:shopping_market_app/view/auth/register_view.dart';
import 'package:shopping_market_app/view/home_screen.dart';
import 'package:shopping_market_app/view/widget/custom_button.dart';
import 'package:shopping_market_app/view/widget/custom_button_social.dart';
import 'package:shopping_market_app/view/widget/custom_text.dart';
import 'package:shopping_market_app/view/widget/custom_text_form_field.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Welcome,",
                      fontSize: 30,
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(RegisterView());
                      },
                      child: CustomText(
                        text: 'Sign Up',
                        color: primaryColor,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
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
                  text: 'Email',
                  hintText: 'Email',
                  onSave: (value) {
                    controller.email = value;
                  },
                  validator: (value) {

                  },
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
                  validator: (value) {

                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: 'Forget Password?',
                  fontSize: 14,
                  alignment: Alignment.topRight,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onPressed: () {

                    // Get.to(SecondScreen());
                    _globalKey.currentState.save();
                    if(_globalKey.currentState.validate()) {
                      controller.signInWithEmailAndPassword();
                    }
                  },
                  text: 'Sign In',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: '-OR-',
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButtonSocial(
                  onPressed: () {},
                  text: 'Sign In with Facebook',
                  imageName: 'assets/images/facebook.png',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButtonSocial(
                  onPressed: () {
                    controller.googleSignInMethod();
                  },
                  text: 'Sign In with Google',
                  imageName: 'assets/images/google.png',
                ),
              ],
            ),
          )),
    );
  }
}

// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.resolveWith<Color>(
// (Set<MaterialState> states) {
// if (states.contains(MaterialState.pressed))
// return Theme.of(context)
//     .colorScheme
//     .primary
//     .withOpacity(0.5);
// return null; // Use the component's default.
// },
// ),
//
// ),
