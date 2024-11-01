import 'package:flutter/material.dart';
import 'package:flutterdesign/app_assets.dart';
import 'package:flutterdesign/app_color.dart';
import 'package:flutterdesign/space_extension.dart';

class DesignDetails extends StatefulWidget {
  const DesignDetails({super.key});

  @override
  State<DesignDetails> createState() => _DesignDetailsState();
}

class _DesignDetailsState extends State<DesignDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Air Max 200 SE',
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const Text(
                'Size',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: const Text(
                  'UK 6',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor,
                      fontSize: 14),
                ),
              ),
            ],
          ),
          Transform.rotate(
            angle: -50 * (3.141592653589793 / 180),
            child: Image.asset(
              AppAssets.mainPic,
              width: 248,
              height: 159,
            ),
          ),
          12.horizontal,
          Column(
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.mainColor,
                foregroundColor: AppColors.whiteColor,
                child: Icon(Icons.bookmark_add_outlined),
              ),
              50.vertical,
              const Text(
                'Colour',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              14.vertical,
              const CircleAvatar(
                backgroundColor: Colors.red,
                radius: 15,
              ),
              12.vertical,
              const CircleAvatar(
                backgroundColor: Colors.green,
                radius: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}
