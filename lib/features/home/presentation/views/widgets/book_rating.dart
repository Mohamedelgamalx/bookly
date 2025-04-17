import 'package:flutter/material.dart';
import '../../../../../core/styles/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.amber),
        SizedBox(width: 6.3),
        Text('4.8  ', style: Styles.titleMedium18),
        SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(2345)',
            style: Styles.titleMedium18),
        ),
      ],
    );
  }
}
