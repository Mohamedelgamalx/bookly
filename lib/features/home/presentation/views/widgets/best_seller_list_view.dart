import 'package:flutter/material.dart';
import '../../../../../core/utils/assets_data.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
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
          Column(),
        ],
      ),
    );
  }
}
