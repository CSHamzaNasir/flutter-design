import 'package:flutter/material.dart';

class CustomGradientBox extends StatelessWidget {
  final Widget? child;
  final double? containerHeight;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? bgColor;
  final VoidCallback? onTap;
  final double? radius;
  final bool isChatItem;
  final LinearGradient? gradient;
  final double? borderThickness;
  const CustomGradientBox({
    super.key,
    this.padding,
    this.child,
    this.containerHeight,
    this.width,
    this.bgColor,
    this.onTap,
    this.radius,
    this.isChatItem = false,
    this.gradient,
    this.borderThickness,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: containerHeight,
        width: width,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: isChatItem
              ? const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12),
                )
              : BorderRadius.circular(radius ?? 12),
          color: bgColor ?? const Color(0xffF9F9F9),
        ),
        child: child,
      ),
    );
  }
}
