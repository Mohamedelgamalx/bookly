import 'package:bookly/features/home/presentation/views/widgets/similar_list_view_books.dart';
import 'package:flutter/material.dart';
import '../../../../../core/styles/styles.dart';

class SimilarListBooksSection extends StatelessWidget {
  const SimilarListBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('You can also like', style: Styles.titleNormal16),
          ),
        ),
        SimilarListBookView(),
      ],
    );
  }
}
