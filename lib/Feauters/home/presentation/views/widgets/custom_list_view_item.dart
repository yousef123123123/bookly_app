import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class featuredListviewItem extends StatelessWidget {
  const featuredListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsData.testImages,
              ),
            )),
      ),
    );
  }
}
