import 'package:bookly/core/styles/styles.dart';
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
          SizedBox(width: 30),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.titleLarge20,
                ),
                Text('J.K. Rowling', style: Styles.titleNormal16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('19.99 €', style: Styles.titleLarge20),
                    SizedBox(width: 66),
                    Icon(Icons.star, color: Colors.amber),
                    Text('4.8  ', style: Styles.titleMedium18),
                    Text('(2345)', style: Styles.titleMedium18),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
