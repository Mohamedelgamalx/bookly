import 'package:flutter/material.dart';
import '../../../../../core/utils/assets_data.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0),
      child: AspectRatio(
        aspectRatio: 75 / 115,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.textImage),
            ),
          ),
        ),
      ),
    );
  }
}
