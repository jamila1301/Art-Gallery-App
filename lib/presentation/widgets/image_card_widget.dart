import 'package:flutter/material.dart';
import 'package:art_gallery_app/core/theme/app_colors.dart';
import 'package:art_gallery_app/core/theme/app_typography.dart';

class ImageCard extends StatelessWidget {
  final String imageName;
  final String imagePath;

  const ImageCard(this.imageName, this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          Image.asset(imagePath, width: 109, height: 72, fit: BoxFit.cover),
          const SizedBox(height: 7),
          Text(
            imageName,
            style: AppTypography.sp14w700.copyWith(color: AppColors.lightGray),
          ),
        ],
      ),
    );
  }
}
