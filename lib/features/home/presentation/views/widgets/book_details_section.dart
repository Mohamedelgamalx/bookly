import 'package:flutter/material.dart';
import '../../../../../core/styles/styles.dart';
import 'book_actions.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.27),
          child: CustomBookItem(),
        ),
        const SizedBox(height: 43),
        Text('The Jungle Book', style: Styles.titleLarge30),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.titleMedium18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 18),
        BookRating(),
        const SizedBox(height: 37),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: BookActions(),
        ),
      ],
    );
  }
}
