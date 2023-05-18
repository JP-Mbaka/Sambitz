import 'package:flutter/material.dart';

const int LargeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget? largescreen;
  final Widget? smallScreen;
  final Widget? mediumScreen;

  const ResponsiveWidget({
    Key? key,
    this.largescreen,
    this.smallScreen,
    this.mediumScreen,
  });

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < LargeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > mediumScreenSize ||
      MediaQuery.of(context).size.width >= LargeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      try {
        if (_width > mediumScreenSize || _width >= LargeScreenSize) {
          return largescreen!;
        } else if (_width < LargeScreenSize && _width >= mediumScreenSize) {
          return mediumScreen!;
        } else {
          return smallScreen!;
        }
      } catch (ex) {
        print("Not working for Screens: $ex");

        return Container();
      } finally {
        print('Executed');
      }
    });
  }
}
