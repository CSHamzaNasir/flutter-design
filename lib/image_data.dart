import 'package:flutter/material.dart';
import 'package:flutterdesign/app_color.dart';
import 'package:flutterdesign/space_extension.dart';

class ImageData extends StatelessWidget {
  const ImageData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(
            height: 182,
            width: 257,
            'https://c4.wallpaperflare.com/wallpaper/624/380/1000/life-resort-hotel-resort-hotel-wallpaper-preview.jpg',
            fit: BoxFit.cover,
          ),
        ),
        12.vertical,
        Row(
          children: [
            const Text(
              'The Aston Vill Hotel',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            30.horizontal,
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            const Text(
              '5.0',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Text(
          'Alice Springs NT 0870, Australia',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xff939393)),
        ),
        16.vertical,
        RichText(
          text: const TextSpan(
              text: '\$200.7',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.purpleColor,
              ),
              children: [
                TextSpan(
                    text: '/night', style: TextStyle(color: Color(0xff939393)))
              ]),
        ),
      ],
    );
  }
}
