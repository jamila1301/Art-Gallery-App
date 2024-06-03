import 'package:flutter/material.dart';
import 'package:art_gallery_app/core/theme/app_colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.0,
      height: 64.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.orange,
      ),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: const Icon(
          Icons.add,
          color: AppColors.white,
          size: 40,
        ),
      ),
    );
  }
}
