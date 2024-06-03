import 'package:flutter/material.dart';
import 'package:art_gallery_app/presentation/widgets/image_card_widget.dart';

class ImageCardsRow extends StatelessWidget {
  const ImageCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ImageCard('Oil paintings', 'assets/images/4x/image_9.png'),
          ImageCard('Museums', 'assets/images/4x/image_10.png'),
          ImageCard('Wall arts', 'assets/images/4x/image_11.png'),
          ImageCard('Oil paintings', 'assets/images/4x/image_9.png'),
        ],
      ),
    );
  }
}
