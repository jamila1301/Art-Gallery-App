import 'package:flutter/material.dart';
import 'package:art_gallery_app/core/theme/app_colors.dart';
import 'package:art_gallery_app/core/theme/app_typography.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleSection({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.sp34w700.copyWith(color: AppColors.gray),
        ),
        const SizedBox(height: 11.0),
        Text(
          subtitle,
          style: AppTypography.sp14w700.copyWith(color: AppColors.lightGray),
        ),
      ],
    );
  }
}
