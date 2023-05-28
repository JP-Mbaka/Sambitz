import 'package:flutter/material.dart';
import 'package:sambitz/screens/dashboard/dailyTransaction.dart';
import 'package:sambitz/screens/dashboard/heading.dart';
import 'package:sambitz/screens/dashboard/pieChart.dart';
import 'package:sambitz/screens/dashboard/tableAllTransactions.dart';
import 'package:sambitz/screens/dashboard/verifiedCard.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

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
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                      ),
                      child: DailyTransact(),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                      ),
                      child: PieChartBalance(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange),
                ),
                child: AllTransactionsTable(),
              )
            ],
          ),
        )
      ],
    );
  }
}
