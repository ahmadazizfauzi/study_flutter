import 'package:flutter/material.dart';
import 'package:study_flutter/core/custom/image/custom_box_image_assets.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:study_flutter/core/color/color.dart';
import 'package:study_flutter/core/styles/style.dart';
import 'package:study_flutter/features/newspages/data/models/news_model.dart';



class NewsContentLatest extends StatelessWidget {
  const NewsContentLatest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 41),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest News',
                style: TextStyles.poppinsBold.copyWith(
                    fontSize: 16,
                    color: AppColors.transparentColor.withOpacity(0.48)),
              ),
              Icon(Icons.arrow_circle_right_outlined,
                  color: AppColors.transparentColor.withOpacity(0.48)),
            ],
          ),
          // SizedBox(height: 23),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: news.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Row(
                      children: [
                        CustomBoxImageAssets(
                            width: 100,
                            height: 100,
                            urlImage: news[index].urlImage),
                        SizedBox(
                          width: 24,
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyles.poppinsRegular,
                                children: [
                                  TextSpan(
                                      style: TextStyles.poppinsBlack
                                          .copyWith(
                                        fontSize: 12,
                                        color: AppColors.transparentColor
                                            .withOpacity(0.48),
                                      ),
                                      text: '${news[index].category}\n'),
                                  TextSpan(
                                      style: TextStyles.poppinsBlack
                                          .copyWith(fontSize: 18),
                                      text: news[index].title),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ))
        ],
      ),
    );
  }
}
