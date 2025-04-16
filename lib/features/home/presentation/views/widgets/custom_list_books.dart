import 'package:flutter/material.dart';
import 'custom_list_item.dart';

class ListBooksItems extends StatelessWidget {
  const ListBooksItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomListItem();
        },
      ),
    );
  }
}
