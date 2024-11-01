import 'package:flutter/material.dart';
import 'package:flutterdesign/app_color.dart';

class ProductItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  const ProductItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: AppColors.greyColor, borderRadius: BorderRadius.circular(24)),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 132,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                        fontSize: 16),
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                        fontSize: 16),
                  ),
                ],
              ),
              const Spacer(),
              const CircleAvatar(
                backgroundColor: AppColors.whiteColor,
                child: Icon(
                  Icons.arrow_circle_down,
                  color: AppColors.mainColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
