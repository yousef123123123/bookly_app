import 'package:bookly/Feauters/home/presentation/views/widgets/Box_Action.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Custom_book_details_app_bar.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Custom_Book_Item.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Similar_Box_List_view.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Similar_Box_Section.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/bookRating.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/book_Details_Section.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_Button.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: const [
                  customAppBarBookDetails(),
                  BookDetailsSection(),
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
