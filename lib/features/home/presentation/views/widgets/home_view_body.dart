import 'package:bookly/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_list_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          ListBooksItems(),
          const SizedBox(height: 48),
          Text('Best Seller', style: Styles.titleMedium),
        ],
      ),
    );
  }
}
