import 'package:bookly/Feauters/home/presentation/views/widgets/Custom_book_details_app_bar.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Similar_Box_Section.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/book_Details_Section.dart';
import 'package:flutter/material.dart';

import '../../../../core/models/book_model.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  customAppBarBookDetails(),
                  BookDetailsSection(
                    book: bookModel,
                  ),
                  Expanded(
                    child: const SizedBox(
                      height: 50,
                    ),
                  ),
                  SimilaBoxSection(),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
