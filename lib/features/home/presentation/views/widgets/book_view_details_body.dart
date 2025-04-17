import 'package:bookly/core/styles/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_book_details.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CustomAppBarBookDetails(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: CustomBookItem(),
        ),
        const SizedBox(height: 43,),
        Text('The Jungle Book', style: Styles.titleLarge30),
        const SizedBox(height: 6,),
        Opacity(
          opacity: 0.7,
          child: Text('Rudyard Kipling', style: Styles.titleMedium18.copyWith(
            fontStyle: FontStyle.italic
          ),),
        ),

      ],
    );
  }
}


