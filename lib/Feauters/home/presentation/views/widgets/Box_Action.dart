import 'package:bookly/core/models/book_model.dart';
import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            text: 'Free',
            bakgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          )),
          Expanded(
              child: CustomButton(
            onPressed: () async {
              LaunchCustomUR(context, bookModel.volumeInfo.previewLink!);
            },
            text: getText(bookModel),
            fontSize: 17,
            bakgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ))
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'NotAvailable';
    } else {
      return 'Preview';
    }
  }
}
