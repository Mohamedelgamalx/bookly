import 'package:bookly/features/home/presentation/views/widgets/book_view_details_body.dart';
import 'package:flutter/material.dart';

class BookViewDetails extends StatelessWidget {
  const BookViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookViewDetailsBody()));
  }
}
