

import 'package:get/get.dart';
import 'package:shopping_market_app/core/viewmodel/auto_view_model.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
  }
}
