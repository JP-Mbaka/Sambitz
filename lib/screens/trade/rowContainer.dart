import 'package:flutter/material.dart';

import '../../widgets/text.dart';

class RowContainer extends StatelessWidget {
  final String? title;
  final String? payMeBY;
  final String? promptText;
  final Widget? symbol;

  const RowContainer({super.key, 
    this.title,
    this.payMeBY,
    @required this.promptText,
    this.symbol,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        customText(
          context,
          title!,
          Theme.of(context).textTheme.titleMedium!.color ?? Colors.black,
          15,
          FontWeight.w600,
        ),
        Container(
          width: double.infinity,
          padding: payMeBY != null
              ? const EdgeInsets.symmetric(vertical: 12.0)
              : null,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black45,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: payMeBY != null
              ? Center(child: Text(payMeBY!))
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.search_rounded,
                      size: 20,
                    ),
                    Text(promptText!),
                    symbol!,
                  ],
                ),
        ),
      ],
    );
  }
}
