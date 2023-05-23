import 'package:flutter/material.dart';
import '../../helpers/responsive.dart';
import '../../widgets/text.dart';
// import 'package:sambitz/helpers/responsive.dart';
// import 'package:sambitz/widgets/text.dart';

class LV2 extends StatelessWidget {
  final ttText = "A trusted and Secure coin Trade ";
  final descText =
      "Buy and Sell Crypto currencies using multple payments methods in peer-to-peer platform including bank transfer";

  const LV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.15
          : MediaQuery.of(context).size.height * 0.12,
      // width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          blackTitle(context, ttText),
          // Text(
          //   ttText,
          //   style: Theme.of(context).textTheme.titleMedium,
          // ),
          if (ResponsiveWidget.isLargeScreen(context))
            const SizedBox(height: 2),
          blackBody(context, descText),
          // Text(
          //   descText,
          //   style: Theme.of(context).textTheme.bodyMedium,
          // ),
        ],
      ),
    );
  }
}
