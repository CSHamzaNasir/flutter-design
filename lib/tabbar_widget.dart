import 'package:flutter/material.dart';
import 'package:flutterdesign/custom_box.dart';
import 'package:flutterdesign/space_extension.dart';

class TapbarWidget extends StatelessWidget {
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Icon icon;
  final String number;

  const TapbarWidget({
    super.key,
    this.foregroundColor,
    this.backgroundColor,
    required this.icon,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomGradientBox(
          bgColor: backgroundColor ?? const Color(0xffF9F9F9),
          child: Row(
            children: [
              Icon(
                icon.icon,
                size: 20,
                color: foregroundColor,
              ),
              6.horizontal,
              Text(
                number,
                style: TextStyle(
                  color: foregroundColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
