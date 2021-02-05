import 'package:flutter/material.dart';

class RouteNavigator extends Route {

  final Widget route;
  final double horizontal;
  final double vertical;

  RouteNavigator({@required this.route, @required this.horizontal, @required this.vertical});

    Route createRoute() {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => route,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(horizontal, vertical);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );
    }
  }
