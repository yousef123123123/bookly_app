import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWideget extends StatelessWidget {
  const CustomErrorWideget({super.key, required this.errMessages});
  final String errMessages;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessages,
      style: Styles.textStyle18,
    );
  }
}
