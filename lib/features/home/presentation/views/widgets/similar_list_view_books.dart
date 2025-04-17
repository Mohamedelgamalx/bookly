import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarListBookView extends StatelessWidget {
  const SimilarListBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomBookItem(),
          );
        },
      ),
    );
  }
}