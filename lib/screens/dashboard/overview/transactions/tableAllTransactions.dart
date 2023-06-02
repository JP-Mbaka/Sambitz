import 'package:flutter/material.dart';

import '../../../../widgets/text.dart';

class AllTransactionsTable extends StatelessWidget {
  const AllTransactionsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.orange,
            ),
          ),
          const SizedBox(width: 20),
          orangeTitle(context, 'All transactions'),
        ],
      ),
      child: ListView(
        children: const [
          SizedBox(height: 40),
          Center(
            child: Text('No Table'),
          ),
        ],
      ),
    );
  }
}
