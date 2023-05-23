import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/screens/trade/largeScreenT.dart';
import '/screens/trade/smallScreenT.dart';
import '../../helpers/responsive.dart';
import '../Top_Nav/largescreenTopnavigation.dart';
import '../Top_Nav/smallscreenTopNav.dart';

class TradePage extends ConsumerWidget {
  static const route = '/trade';

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();

  TradePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: ResponsiveWidget.isLargeScreen(context)
          ? LStopNavigation(
              context,
              ref,
              scaffoldKey,
            )
          : SMtopNavigation(context, scaffoldKey),
      body: ResponsiveWidget(
        largescreen: LScreenTrade(),
        mediumScreen: LScreenTrade(),
        smallScreen: const SScreenTrade(),
      ),
    );
  }
}
