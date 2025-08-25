import 'package:flutter/material.dart';

class ScreenSize {
  final BuildContext context;
  ScreenSize(this.context);

  double width() => MediaQuery.of(context).size.width;
  double height() => MediaQuery.of(context).size.height;

  double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
}
