import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_list_books_section.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar_book_details.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomAppBarBookDetails(),
              BookDetailsSection(),
              Expanded(child: const SizedBox(height: 24)),
              SimilarListBooksSection(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
