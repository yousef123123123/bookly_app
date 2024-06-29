import 'package:bookly/Feauters/home/presentation/views/widgets/Custom_book_details_app_bar.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Custom_Book_Item.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          customAppBarBookDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: CustomBookImage(),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text(
              'Harry Potter               and the  Goblet of Fire',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20.copyWith(
                  fontFamily: kGtSectraFine, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
