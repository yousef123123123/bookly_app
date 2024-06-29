import 'package:bookly/Feauters/home/presentation/views/widgets/Box_Action.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Custom_book_details_app_bar.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Custom_Book_Item.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Similar_Box_List_view.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/bookRating.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_Button.dart';
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
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text('The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .8,
            child: Text('Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(
            height: 18,
          ),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BooksAction(),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SimilarBoxListView(),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
