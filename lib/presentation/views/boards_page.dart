import 'package:flutter/material.dart';
import 'package:art_gallery_app/presentation/widgets/boards_page_buttons.dart';
import 'package:art_gallery_app/presentation/widgets/custom_card.dart';
import 'package:art_gallery_app/core/theme/app_colors.dart';
import 'package:art_gallery_app/presentation/widgets/custom_app_bar.dart';
import 'package:art_gallery_app/presentation/widgets/custom_bottom_app_bar.dart';
import 'package:art_gallery_app/presentation/widgets/custom_floating_action_button.dart';
import 'package:art_gallery_app/presentation/widgets/title_section.dart';

class BoardsPage extends StatefulWidget {
  const BoardsPage({super.key});

  @override
  State<BoardsPage> createState() => _BoardsPageState();
}

class _BoardsPageState extends State<BoardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        onBackPressed: () {},
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSection(
              title: 'Boards',
              subtitle: 'Following galleries to power up your art careere',
            ),
            SizedBox(height: 16.0),
            BoardsPageButtons(),
            SizedBox(height: 26.0),
            CustomCard(),
          ],
        ),
      ),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
