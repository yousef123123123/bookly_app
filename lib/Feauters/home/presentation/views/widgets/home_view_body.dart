import 'package:bookly/Feauters/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CustomAppBar(), CustomListViewItem()],
    );
  }
}
