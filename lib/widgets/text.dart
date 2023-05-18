import 'package:flutter/material.dart';

Widget whiteTitle(BuildContext context, String title) {
  return Text(
    title,
    style: Theme.of(context).textTheme.titleLarge,
  );
}

Widget blackTitle(BuildContext context, String title) {
  return Text(
    title,
    style: Theme.of(context).textTheme.titleMedium,
  );
}

Widget orangeTitle(BuildContext context, String title) {
  return Text(
    title,
    style: Theme.of(context).textTheme.titleSmall,
  );
}

Widget customText(
  BuildContext context,
  String title,
  Color color,
  double fontSize,
  FontWeight fontWeight,
) {
  return Text(
    title,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

Widget whiteBody(BuildContext context, String title) {
  return Text(
    title,
    style: Theme.of(context).textTheme.bodyLarge,
  );
}

Widget blackBody(BuildContext context, String title) {
  return Text(
    title,
    style: Theme.of(context).textTheme.bodyMedium,
  );
}

Widget orangeBody(BuildContext context, String title) {
  return Text(
    title,
    style: Theme.of(context).textTheme.bodySmall,
  );
}

Widget btnText(BuildContext context, String title, Color color) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
