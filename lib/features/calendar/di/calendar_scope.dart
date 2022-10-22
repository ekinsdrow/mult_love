import 'package:flutter/material.dart';

class CalendarScope extends StatelessWidget {
  const CalendarScope({
    Key? key,
    required this.child,
    required this.serialLink,
  }) : super(key: key);

  final Widget child;
  final String serialLink;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
