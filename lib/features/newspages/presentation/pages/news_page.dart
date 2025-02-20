import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:study_flutter/core/color/color.dart';
import 'package:study_flutter/core/custom/image/custom_box_image_assets.dart';
import 'package:study_flutter/core/styles/style.dart';
import 'package:study_flutter/features/newspages/data/models/news_model.dart';
import 'package:study_flutter/features/newspages/presentation/widgets/news_content_header_widget.dart';
import 'package:study_flutter/features/newspages/presentation/widgets/news_content_latest_widget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBoxImageAssets(
              width: 40,
              height: 40,
              urlImage: ('assets/icons/icon.png'),
            ),
            Text(
              'NewsApp',
              style: TextStyles.poppinsBlack.copyWith(
                fontSize: 16,
                color: AppColors.transparentColor,
              ),
            ),
            SizedBox()
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          NewsContentHeaderWidget(),
          NewsContentLatest(),
        ],
      ),
    );
  }
}

