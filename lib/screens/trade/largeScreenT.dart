import 'package:flutter/material.dart';
import '../trade/trades.dart';
// import 'package:sambitz/screens/trade/trades.dart';

import '/screens/trade/tradeForm.dart';
import '/widgets/footer.dart';


// ignore: must_be_immutable
class LScreenTrade extends StatelessWidget {
  late String currencyDropDown;
  String? payMeBy;

  LScreenTrade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: TradeForm(context)),
            // Divider(),
            Expanded(
              flex: 3,
              child: Container(
                  // padding: const EdgeInsets.all(20),
                  // color: Colors.yellow,
                  height: MediaQuery.of(context).size.height * 0.92,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      vertical: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  child: trades(context)),
            ),
          ],
        ),
        Footer(),
      ],
    );
  }
}
