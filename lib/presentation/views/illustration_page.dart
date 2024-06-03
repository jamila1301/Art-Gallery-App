import 'package:flutter/material.dart';
import 'package:art_gallery_app/core/theme/app_colors.dart';
import 'package:art_gallery_app/presentation/widgets/custom_bottom_app_bar.dart';
import 'package:art_gallery_app/presentation/widgets/custom_floating_action_button.dart';
import 'package:art_gallery_app/presentation/widgets/image_cards_row.dart';
import 'package:art_gallery_app/presentation/widgets/image_collection.dart';
import 'package:art_gallery_app/presentation/widgets/custom_app_bar.dart';
import 'package:art_gallery_app/presentation/widgets/title_section.dart';

class IllustrationPage extends StatefulWidget {
  const IllustrationPage({super.key});

  @override
  State<IllustrationPage> createState() => _IllustrationPageState();
}

class _IllustrationPageState extends State<IllustrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        onBackPressed: () {
          Navigator.pop(context);
        },
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSection(
              title: 'Illustrations',
              subtitle: 'CURATED GALLERIES',
            ),
            SizedBox(height: 16.0),
            ImageCardsRow(),
            SizedBox(height: 25),
            ImagesCollection(),
          ],
        ),
      ),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
