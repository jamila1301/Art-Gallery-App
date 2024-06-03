import 'package:flutter/material.dart';
import 'package:art_gallery_app/core/constants/assets.dart';

class ImagesCollection extends StatelessWidget {
  const ImagesCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.asset(
            AppImages.boards4,
            width: 543,
            height: 210,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 18),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      AppImages.boards5,
                      width: 543,
                      height: 210,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      AppImages.boards9,
                      width: 343,
                      height: 210,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 19),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                AppImages.boards12,
                width: 200,
                height: 408,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
