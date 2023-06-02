import 'package:flutter/material.dart';
import 'package:sambitz/screens/dashboard/Wallet/main.dart';

import 'Contracts/approved.dart';
import 'Contracts/cancled.dart';
import 'Contracts/pending.dart';
import 'Contracts/suspended.dart';
import 'Status/active.dart';
import 'Status/offsale.dart';
import 'heading.dart';
import 'overview/cashback.dart';
import 'overview/trading_partners.dart';
import 'overview/transactions/transactions.dart';
import 'trades/buy.dart';
import 'trades/sell.dart';
import 'verifiedCard.dart';

class DashBoardView extends StatefulWidget {
  DashBoardView({
    super.key,
    required this.pageNo,
  });
  int pageNo;

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  var showPage = [
    const Transactions(),
    TradingPartners(),
    CashBack(),
    DropdownBuy(),
    DropdownSells(),
    Approved(),
    Pending(),
    Suspended(),
    Canceled(),
    Active(),
    OffSale(),
    Wallet()
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: true,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingDash(),
        VerifiedRow(),
        Container(
          // height: 550,
          width: double.infinity,
          padding: const EdgeInsets.all(25.0),
          child: IndexedStack(
            index: widget.pageNo,
            children: showPage,
          ),
        )
      ],
    );
  }
}
