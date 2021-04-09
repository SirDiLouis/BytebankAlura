import 'package:flutter/material.dart';

Route createRoute(
    {@required Widget toClass,
    double horizontal = 1.0,
    double vertical = 1.0}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => toClass,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(horizontal, vertical);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
