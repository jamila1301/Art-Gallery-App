import 'package:flutter/material.dart';
import 'package:art_gallery_app/core/theme/app_colors.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(60.0),
        topRight: Radius.circular(60.0),
      ),
      child: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mode_standby,
                          color: AppColors.buttonGray,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.window_outlined,
                          color: AppColors.buttonGray,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit_outlined,
                          color: AppColors.buttonGray,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline_rounded,
                          color: AppColors.buttonGray,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
