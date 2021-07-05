import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_market_app/core/viewmodel/auto_view_model.dart';
import 'package:shopping_market_app/view/auth/login_screen.dart';
import 'package:shopping_market_app/view/home_screen.dart';

class ControlView extends GetWidget<AuthViewModel> {


  @override
  Widget build(BuildContext context) {
    return Obx((){
     return (Get.find<AuthViewModel>().user != null)
         ?  HomeScreen()
         :LoginScreen();
    }
    );
  }
}
