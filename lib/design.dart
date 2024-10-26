import 'package:flutter/material.dart';
import 'package:flutterdesign/app_color.dart';
import 'package:flutterdesign/custom_box.dart';
import 'package:flutterdesign/image_data.dart';
import 'package:flutterdesign/space_extension.dart';
import 'package:flutterdesign/tabbar_widget.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Current Location",
          style: TextStyle(fontSize: 12, color: Color(0xff939393)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(
                  Icons.location_pin,
                  size: 20,
                  color: AppColors.purpleColor,
                ),
                Text(
                  'Wallace, Australia',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            32.vertical,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TapbarWidget(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.purpleColor,
                    icon: Icon(Icons.home),
                    number: "12"),
                TapbarWidget(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.purpleColor,
                    icon: Icon(Icons.app_blocking),
                    number: "12"),
                TapbarWidget(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.purpleColor,
                    icon: Icon(Icons.analytics),
                    number: "12"),
                TapbarWidget(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.purpleColor,
                    icon: Icon(Icons.library_add),
                    number: "12"),
              ],
            ),
            24.vertical,
            const Row(
              children: [
                Text(
                  'Near Location',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.purpleColor),
                )
              ],
            ),
            16.vertical,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const ImageData(),
                  16.horizontal,
                  const ImageData(),
                ],
              ),
            ),
            24.vertical,
            const Row(
              children: [
                Text(
                  'Popular Hotel',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.purpleColor),
                )
              ],
            ),
            16.vertical,
            CustomGradientBox(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      height: 84,
                      width: 84,
                      "https://c4.wallpaperflare.com/wallpaper/721/832/884/5-star-hotel-room-wallpaper-preview.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  12.horizontal,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'The Ataon vill Hotel',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Alice Spring NT 0987 Australia',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.subTitleColor),
                      ),
                      16.vertical,
                      RichText(
                        text: const TextSpan(
                            text: '\$200.8',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.purpleColor,
                            ),
                            children: [
                              TextSpan(
                                text: '/night',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.subTitleColor,
                                ),
                              )
                            ]),
                      )
                    ],
                  )
                ],
              ),
            ),
            24.vertical,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    fixedSize: const Size(350, 57),
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.purpleColor),
                onPressed: () {},
                child: const Text(
                  'Booking Now',
                ))
          ],
        ),
      ),
    );
  }
}
