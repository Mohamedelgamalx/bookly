import 'package:bookly/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'List_view_for_books.dart';

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
          ListViewForBooks(),
          const SizedBox(height: 48),
          Text('Best Seller', style: Styles.titleMedium),
          const SizedBox(height: 16),
          BestSellerListView(),
        ],
      ),
    );
  }
}
