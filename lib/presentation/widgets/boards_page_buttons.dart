import 'package:flutter/material.dart';
import 'package:art_gallery_app/core/theme/app_colors.dart';
import 'package:art_gallery_app/core/theme/app_typography.dart';
import 'package:art_gallery_app/presentation/views/illustration_page.dart';

class BoardsPageButtons extends StatelessWidget {
  const BoardsPageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 50.0,
          width: 135.0,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'painting',
                    style:
                        AppTypography.sp14w700.copyWith(color: AppColors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(
                  Icons.close,
                  color: AppColors.white,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        SizedBox(
          height: 50.0,
          width: 155.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const IllustrationPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Illustration',
                    style:
                        AppTypography.sp14w700.copyWith(color: AppColors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(
                  Icons.close,
                  color: AppColors.white,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
