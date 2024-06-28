import 'package:bookly/Feauters/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeauterdBooksListView extends StatelessWidget {
  const FeauterdBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: featuredListviewItem(),
            );
          }),
    );
  }
}
