import 'package:bookly/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'List_view_for_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              ListViewForBooks(),
              SizedBox(height: 48),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('Best Seller', style: Styles.titleMedium18),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
        SliverFillRemaining(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: BestSellerListView(),
        )),
      ],
    );
  }
}
