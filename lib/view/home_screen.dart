import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_market_app/core/viewmodel/auto_view_model.dart';

class HomeScreen extends StatelessWidget {

  // stateMangement

  /// Getx  -- rective -- stream
  ///
  /// obx

  @override
  Widget build(BuildContext context) {
    AuthViewModel viewModel = Get.put(AuthViewModel());
    return Scaffold(
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Center(
      //       child: Obx(
      //         () => Text("${viewModel.counter}"),
      //       ),
      //     ),
      //     RaisedButton(
      //       child: Text('welcome'),
      //       onPressed: () {
      //         viewModel.increment();
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}

               /// GetBuilder
//
// @override
// Widget build(BuildContext context) {
//   AuthViewModel viewModel =Get.put(AuthViewModel());
//   return Scaffold(
//     body: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Center(
//           child:
//  GetBuilder<AuthViewModel>(
//             init: AuthViewModel(),
//             builder: (value) => Text("${value.counter}"),
//           ),
//         ),
//         GetBuilder<AuthViewModel>(
//           builder: (value) => RaisedButton(
//             child: Text('welcome'),
//             onPressed: () {
//               value.increment();
//             },
//           ),
//         ),
//       ],
//     ),
//   );
// }

               ///  GetX
//
//
//
// @override
// Widget build(BuildContext context) {
//   AuthViewModel viewModel =Get.put(AuthViewModel());
//   return Scaffold(
//     body: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Center(
//           child:
//           GetX<AuthViewModel>(
//             init: AuthViewModel(),
//             builder: (value) => Text("${value.counter}"),
//           ),
//         ),
//         RaisedButton(
//           child: Text('welcome'),
//           onPressed: () {
//             viewModel.increment();
//           },
//         ),
//       ],
//     ),
//   );
// }

            ///  obx
// @override
// Widget build(BuildContext context) {
//   AuthViewModel viewModel = Get.put(AuthViewModel());
//   return Scaffold(
//     body: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Center(
//           child: Obx(
//                 () => Text("${viewModel.counter}"),
//           ),
//         ),
//         RaisedButton(
//           child: Text('welcome'),
//           onPressed: () {
//             viewModel.increment();
//           },
//         ),
//       ],
//     ),
//   );
// }