import 'package:bookly/core/styles/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_list_view_books.dart';
import 'package:flutter/material.dart';
import 'book_actions.dart';
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
          padding: EdgeInsets.symmetric(horizontal: width * 0.27),
          child: CustomBookItem(),
        ),
        const SizedBox(height: 43),
        Text('The Jungle Book', style: Styles.titleLarge30),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.titleMedium18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 18),
        BookRating(),
        const SizedBox(height: 37),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: BookActions(),
        ),
        const SizedBox(height: 24,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Align(
            alignment: Alignment.topLeft,
              child: Text('You can also like', style: Styles.titleNormal16,)),
        ),
        SimilarListBookView(),
        const SizedBox(height: 20,),
      ],
    );
  }
}





