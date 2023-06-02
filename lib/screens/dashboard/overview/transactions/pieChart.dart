import 'package:flutter/material.dart';

import '../../../../widgets/text.dart';

class PieChartBalance extends StatelessWidget {
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
          orangeTitle(context, 'Available balance'),
        ],
      ),
      child: const Center(child: Text('No chart')),
    );
  }
}
