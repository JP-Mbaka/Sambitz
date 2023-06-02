import 'package:flutter/material.dart';

import 'dailyTransaction.dart';
import 'pieChart.dart';
import 'tableAllTransactions.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                child: const DailyTransact(),
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
          child: const AllTransactionsTable(),
        )
      ],
    );
  }
}
