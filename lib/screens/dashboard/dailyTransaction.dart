import 'package:flutter/material.dart';
import 'package:sambitz/widgets/text.dart';

class DailyTransact extends StatelessWidget {
  const DailyTransact({super.key});

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
          orangeTitle(context, 'History'),
        ],
      ),
      child: const Center(child: Text('No chart')),
    );

    // Center(
    //   child: Text('Daily Transaction'),
    // );
  }
}
