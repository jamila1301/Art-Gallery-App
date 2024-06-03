import 'package:flutter/material.dart';
import 'package:art_gallery_app/core/constants/assets.dart';
import 'package:art_gallery_app/core/theme/app_colors.dart';
import 'package:art_gallery_app/core/theme/app_typography.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomCardItem(
          image1: AppImages.boards1,
          image2: AppImages.boards2,
          image3: AppImages.boards3,
          text: 'paintings',
        ),
        SizedBox(
          height: 8,
        ),
        CustomCardItem(
          image1: AppImages.boards4,
          image2: AppImages.boards5,
          image3: AppImages.boards6,
          text: 'Illustrations',
        ),
        SizedBox(
          height: 8,
        ),
        CustomCardItem(
          image1: AppImages.boards7,
          image2: AppImages.boards8,
          image3: AppImages.boards5,
          text: 'Illustrations',
        ),
      ],
    );
  }
}

class CustomCardItem extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  final String text;

  const CustomCardItem({
    super.key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4.0,
      margin: const EdgeInsets.all(1.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                  ),
                  child: Image.asset(
                    image1,
                    width: 200,
                    height: 164,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15.0),
                      ),
                      child: Image.asset(
                        image2,
                        width: 194,
                        height: 83,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        image3,
                        width: 194,
                        height: 83,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style:
                      AppTypography.sp18w700.copyWith(color: AppColors.black),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add_box,
                    color: AppColors.iconGray,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
