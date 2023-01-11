import 'package:flutter/material.dart';
import 'navigator_key.dart';

class NavManager {
  const NavManager._();

  static BuildContext get context => navigatorKey.currentState!.context;

  static Future<T?> goTo<T extends Object>(Widget page) {
    return Navigator.push(

        context, MaterialPageRoute(builder: ((context) => page)));
  }

  static Future<T?> replace<T extends Object>(Widget page) {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => page)));
  }

  static Future<T?> gotoAndRemoveAllPrevious<T extends Object>(Widget page) {
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page), (route) => false);
  }

  static Future<T?> gotoAndRemoveUntil<T extends Object>(
      Widget page, RoutePredicate predicate) {
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page), predicate);
  }
}
