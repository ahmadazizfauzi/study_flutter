import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_flutter/core/color/color.dart';
import 'package:study_flutter/core/custom/image/custom_box_image_assets.dart';

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
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.black),
            ),
            SizedBox()
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Column(
          children: [
            SizedBox(
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
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                                Text(
                                  '3 min ago',
                                  style: GoogleFonts.poppins(
                                      fontSize: 8, color: Colors.white),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "Microsoft launches a deepfake detector tool ahead of US election",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: AppColors.white,
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
            )
          ],
        ),
      ),
    );
  }
}
