import 'package:bookly/core/widgets/custom_Button.dart';
import 'package:flutter/material.dart';

import 'presentation/views/book_details_View_Body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
