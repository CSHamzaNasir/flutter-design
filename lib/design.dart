import 'package:flutter/material.dart';
import 'package:flutterdesign/app_assets.dart';
import 'package:flutterdesign/app_color.dart';
import 'package:flutterdesign/design_details.dart';
import 'package:flutterdesign/space_extension.dart';

import 'product_item.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  final List<String> day = [
    'All',
    'Running',
    'Sneakers',
    'Formal',
    'Casual',
  ];
  String _selectedOption = 'All';
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                    color: AppColors.greyColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              '20%',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor),
                            ),
                            12.horizontal,
                            const Text(
                              'Discount',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Text(
                          'on your first purchase',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        22.vertical,
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(96, 29),
                                foregroundColor: AppColors.whiteColor,
                                backgroundColor: AppColors.blackColor),
                            onPressed: () {},
                            child: const Text(
                              'Shop now',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    Image.asset(
                      AppAssets.image1,
                      width: 195,
                    )
                  ],
                ),
              ),
              16.vertical,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.blackColor,
                    radius: 4,
                  ),
                  ...List.generate(
                    2,
                    (int index) => const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: AppColors.subtitleColor,
                        radius: 4,
                      ),
                    ),
                  )
                ],
              ),
              20.vertical,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: day.map((option) {
                    final bool isSelected = _selectedOption == option;
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedOption = option;
                          });
                        },
                        child: isSelected
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColors.blackColor),
                                child: Text(
                                  option,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              )
                            : Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  option,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.subtitleColor,
                                  ),
                                ),
                              ));
                  }).toList(),
                ),
              ),
              30.vertical,
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DesignDetails()),
                  );
                },
                child: Row(
                  children: [
                    const Expanded(
                      child: ProductItem(
                        image: AppAssets.image5,
                        title: 'Air Max 97',
                        price: '\$20.99',
                      ),
                    ),
                    16.horizontal,
                    const Expanded(
                      child: ProductItem(
                        image: AppAssets.image2,
                        title: 'React Presto',
                        price: '\$20.99',
                      ),
                    ),
                  ],
                ),
              ),
              20.vertical,
              Row(
                children: [
                  const Expanded(
                    child: ProductItem(
                      image: AppAssets.image3,
                      title: 'Air Max 97',
                      price: '\$20.99',
                    ),
                  ),
                  16.horizontal,
                  const Expanded(
                    child: ProductItem(
                      image: AppAssets.image4,
                      title: 'React Presto',
                      price: '\$20.99',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
