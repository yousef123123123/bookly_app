import 'package:bookly/Feauters/home/presentation/views/widgets/Similar_Box_List_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilaBoxSection extends StatelessWidget {
  const SimilaBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        SimilarBoxListView(),
      ],
    );
  }
}
