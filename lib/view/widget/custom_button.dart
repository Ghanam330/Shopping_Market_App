import 'package:flutter/material.dart';

import '../../constance.dart';
import 'custom_text.dart';
class CustomButton extends StatelessWidget {

  final String text;
  final Function onPressed;
  CustomButton({
    this.text,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      child:  FlatButton(
        onPressed:onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),

        ),
        color: primaryColor,
        padding: EdgeInsets.all(18),
        child: CustomText(
          text: text,
          alignment: Alignment.center,
          color: Colors.white,
        ),
      ),
    );
  }
}
