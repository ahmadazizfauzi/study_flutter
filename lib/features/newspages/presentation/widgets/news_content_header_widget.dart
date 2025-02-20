

import 'package:flutter/material.dart';
import 'package:study_flutter/core/custom/image/custom_box_image_assets.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:study_flutter/core/color/color.dart';
import 'package:study_flutter/core/styles/style.dart';

class NewsContentHeaderWidget extends StatelessWidget {
  const NewsContentHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 311,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 17, left: index == 0 ? 32 : 0),
          child: CustomBoxImageAssets(
            height: 311,
            // margin: EdgeInsets.only(left: 16),
            width: 311,
            padding: EdgeInsets.only(
                left: 24, right: 14, top: 24, bottom: 24),
            urlImage: 'assets/images/image1.png',
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TECHNOLOGY',
                          style: TextStyles.poppinsBlack.copyWith(
                            fontSize:12, color: AppColors.white,
                          ),
                        ),
                        Text(
                          '3 min ago',
                          style: TextStyles.poppinsRegular.copyWith(
                            fontSize: 8, color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Microsoft launches a deepfake detector tool ahead of US election",
                      style: TextStyles.poppinsBlack.copyWith(
                        fontSize: 18, color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        CustomBoxImageAssets(
                          width: 24,
                          height: 24,
                          urlImage: 'assets/icons/chat.png',
                        ),
                        SizedBox(width: 24),
                        CustomBoxImageAssets(
                          width: 24,
                          height: 24,
                          urlImage: 'assets/icons/Path.png',
                        ),
                        Spacer(),
                        CustomBoxImageAssets(
                          width: 24,
                          height: 24,
                          urlImage: 'assets/icons/redo.png',
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}