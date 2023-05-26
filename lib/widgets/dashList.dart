import 'package:flutter/material.dart';

import 'text.dart';

Widget listDash(
  BuildContext context,
  IconData icon,
  String title,
  VoidCallback func,
  bool showMenuDash,
) {
  return InkWell(
    onTap: func,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          icon,
          // Icons.money,
          size: 25,
        ),
        if (!showMenuDash)
          customText(
            context,
            title,
            // 'Cash back',
            Colors.black,
            14,
            FontWeight.w600,
          ),
        if (!showMenuDash)
          const Icon(
            Icons.arrow_downward,
            size: 20,
          ),
      ],
    ),
  );
}

Widget smallListDash(
  BuildContext context,
  String title,
  Color color,
  bool showMenuDash,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 120.0),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            border: Border.all(
              color: color,
              // color: Colors.red,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        if (!showMenuDash) const SizedBox(width: 20),
        if (!showMenuDash)
          customText(
            context,
            title,
            Colors.black,
            14,
            FontWeight.w600,
          ),
      ],
    ),
  );
}
