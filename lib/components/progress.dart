import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingBouncingGrid.square(
        backgroundColor: Colors.green,
        inverted: true,
        size: 100,
      ),
    );
  }
}
