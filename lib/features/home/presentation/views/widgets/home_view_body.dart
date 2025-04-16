import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_list_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), ListBooksItems()]);
  }
}
