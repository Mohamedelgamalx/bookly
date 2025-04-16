import 'package:flutter/material.dart';
import 'custom_list_item.dart';

class ListViewForBooks extends StatelessWidget {
  const ListViewForBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomListItem(),
          );
        },
      ),
    );
  }
}
