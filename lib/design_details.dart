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
      backgroundColor: AppColors.whiteColor,
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
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                            const UK(text: 'UK 6'),
                            6.vertical,
                            const UK(text: 'UK 7'),
                            6.vertical,
                            const UK(text: 'UK 8'),
                            6.vertical,
                            const UK(text: 'UK 9'),
                          ],
                        ),
                        Hero(
                          tag: 'hero',
                          child: Image.asset(
                            AppAssets.image5,
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
                    20.vertical,
                    const Text(
                      '\$30.99',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '10% OFF',
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                    const Center(
                      child: Text(
                        'Swipe down to add',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                    6.vertical,
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.blackColor),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.shopping_cart,
                              color: AppColors.whiteColor,
                            ),
                            12.vertical,
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.subtitleColor,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.whiteColor,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.whiteColor,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Image.asset(AppAssets.basket)
          ],
        ),
      ),
    );
  }
}

class UK extends StatelessWidget {
  final String text;
  const UK({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.blackColor),
        borderRadius: BorderRadius.circular(12),
        color: Colors.transparent,
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
            fontSize: 14),
      ),
    );
  }
}
