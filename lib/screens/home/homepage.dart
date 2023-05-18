import 'package:flutter/material.dart';
import '../home/lv_1.dart';
import '../home/lv_2.dart';
import '../home/quickCreate.dart';
import '../home/tradeOptions.dart';
import '../home/financeSys.dart';
import '../Top_Nav/largescreenTopnavigation.dart';
import '../Top_Nav/smallscreenTopNav.dart';
import '../../widgets/buy_widget.dart';
import '../../widgets/footer.dart';
import '../../helpers/responsive.dart';
// import 'package:sambitz/helpers/responsive.dart';
// import 'package:sambitz/screens/Top_Nav/largescreenTopnavigation.dart';
// import 'package:sambitz/screens/Top_Nav/smallscreenTopNav.dart';
// import 'package:sambitz/screens/home/financeSys.dart';
// import 'package:sambitz/widgets/footer.dart';
// import 'package:sambitz/screens/home/lv_1.dart';
// import 'package:sambitz/screens/home/lv_2.dart';
// import 'package:sambitz/screens/home/quickCreate.dart';
// import 'package:sambitz/screens/home/tradeOptions.dart';
// import 'package:sambitz/widgets/buy_widget.dart';

class HomePage extends StatelessWidget {
  static const route = '/';

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveWidget.isLargeScreen(context)
          ? LStopNavigation(context, scaffoldKey)
          : SMtopNavigation(context, scaffoldKey),
      // (Platform.isAndroid) ? AppBar() : topNavigation(context, scaffoldKey),
      body: ListView(
        padding: ResponsiveWidget.isSmallScreen(context)
            ? EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom + 25,
              )
            : null,
        shrinkWrap: true,
        children: [
          ResponsiveWidget(
            largescreen: LV1_ls(),
            smallScreen: LV1_ss(),
          ),

          LV2(),

          const SizedBox(height: 5),

          Center(
            child: Container(
                width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.width * 0.95
                    : MediaQuery.of(context).size.width * 0.45,
                padding: const EdgeInsets.all(8.0),
                child: Buy_2(formKey: formKey)),
          ),
          const SizedBox(height: 25),
          OptionsDisplay(),
          FinanceSys(),
          QuickStar(),
          const SizedBox(height: 15),
          Footer()
          // GridView(gridDelegate: const SliverGridDelegate())
        ],
      ),
    );
  }
}
