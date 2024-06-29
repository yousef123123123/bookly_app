import 'package:bookly/Feauters/home/presentation/views/widgets/Custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          customAppBarBookDetails(),
        ],
      ),
    );
  }
}
