import 'package:flutter/material.dart';

int smallScreenWidth = 752;
int largeScreenWidth = 1200;

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget(
      {Key? key,
      @required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < smallScreenWidth;
  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > largeScreenWidth;
  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= smallScreenWidth &&
      MediaQuery.of(context).size.width <= largeScreenWidth;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      if (maxWidth > largeScreenWidth)
        return largeScreen!;
      else if (maxWidth >= smallScreenWidth && maxWidth <= largeScreenWidth)
        return mediumScreen ?? largeScreen!;
      else
        return smallScreen ?? largeScreen!;
    });
  }
}
