import 'package:flutter/material.dart';

class CustomBoxImageAssets extends StatelessWidget {
  const CustomBoxImageAssets({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.child,
    required this.urlImage,
  });

  final double? width;
  final double? height;
  final String urlImage;
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 40,
      padding: padding,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(urlImage),
        ),
      ),
      child: child,
    );
  }
}
