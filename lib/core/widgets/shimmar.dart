import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class shimmer extends StatelessWidget {
  const shimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 100.0,
      child: Shimmer.fromColors(
        baseColor: Colors.red,
        highlightColor: Colors.yellow,
        child: Text(
          'BooKly',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    ;
  }
}
