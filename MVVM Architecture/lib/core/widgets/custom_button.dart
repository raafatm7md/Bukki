import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.bgColor,
      required this.textColor,
      this.borderRadius,
      required this.text,
      this.onPressed});

  final Color bgColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: bgColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(14.0))),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18.0, color: textColor, fontWeight: FontWeight.w900),
          )),
    );
  }
}
