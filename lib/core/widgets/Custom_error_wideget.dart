import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWideget extends StatelessWidget {
  const CustomErrorWideget({super.key, required this.errMessages});
  final String errMessages;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessages,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
