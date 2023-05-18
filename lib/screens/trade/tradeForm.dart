import 'package:flutter/material.dart';

import '../../widgets/text.dart';
import 'rowContainer.dart';

Widget TradeForm(BuildContext context) {
  return Container(
    // color: Colors.red,
    padding: const EdgeInsets.all(8.0),
    child: Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: blackTitle(context, 'Sell'),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField(
            value: 1,
            style: const TextStyle(inherit: false),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              border: const OutlineInputBorder(),
              fillColor: Theme.of(context).textTheme.displayMedium!.color,
            ),
            items: [
              DropdownMenuItem(
                value: 1,
                child: customText(
                  context,
                  'BitCoin',
                  Theme.of(context).textTheme.titleSmall!.color ??
                      Colors.orange,
                  15,
                  FontWeight.w200,
                ),
              ),
              DropdownMenuItem(
                value: 2,
                child: customText(
                  context,
                  'Ethereum',
                  Theme.of(context).textTheme.titleSmall!.color ??
                      Colors.orange,
                  15,
                  FontWeight.w200,
                ),
                //  Text(
                //   'Ethereum',
                //   style: TextStyle(
                //     color: Theme.of(context).textTheme.displayMedium!.color,
                //   ),
                // ),
              ),
              DropdownMenuItem(
                value: 2,
                child: customText(
                  context,
                  'USDT',
                  Theme.of(context).textTheme.titleSmall!.color ??
                      Colors.orange,
                  15,
                  FontWeight.w200,
                ),
                // Text(
                //   'USDT',
                //   style: TextStyle(
                //     color: Theme.of(context).textTheme.displayMedium!.color,
                //   ),
                // ),
              )
            ],
            onChanged: (e) {
              var currencyDropDown = e.toString();
            },
          ),
          customText(
            context,
            '1 BTC = 28,837.44 usd',
            Theme.of(context).textTheme.titleSmall!.color ?? Colors.orange,
            12,
            FontWeight.w400,
          ),
          // Text(
          //   '1 BTC = 28,837.44 usd',
          //   style: TextStyle(
          //     color: Theme.of(context).primaryColor,
          //     fontSize: 12,
          //     // wordSpacing: 2.,
          //   ),
          // ),
          const SizedBox(height: 10),
          RowContainer(
            title: 'Get Paid Via',
            promptText: 'All payment',
            symbol: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_rounded,
                size: 20,
              ),
            ),
          ),
          RowContainer(
            promptText: 'Enter Amount',
            title: 'I want to get',
            symbol: SizedBox(
              width: 80,
              child: DropdownButtonFormField(
                  value: 1,
                  style: const TextStyle(inherit: false),
                  items: [
                    DropdownMenuItem(
                      value: 1,
                      child: customText(
                        context,
                        'USD',
                        Theme.of(context).textTheme.titleSmall!.color ??
                            Colors.black,
                        15,
                        FontWeight.w200,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: customText(
                        context,
                        'NGN',
                        Theme.of(context).textTheme.titleSmall!.color ??
                            Colors.black,
                        15,
                        FontWeight.w200,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 3,
                      child: customText(
                        context,
                        'Euro',
                        Theme.of(context).textTheme.titleSmall!.color ??
                            Colors.black,
                        15,
                        FontWeight.w200,
                      ),
                    ),
                  ],
                  onChanged: (e) {
                    var currencyDropDown = e.toString();
                  }),
            ),
          ),
          const SizedBox(height: 10),

          customText(
            context,
            'Offer Location',
            Theme.of(context).textTheme.titleMedium!.color ?? Colors.black,
            15,
            FontWeight.w600,
          ),
          DropdownButtonFormField(
            value: 1,
            style: const TextStyle(inherit: false),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              border: const OutlineInputBorder(),
              fillColor: Theme.of(context).textTheme.displayMedium!.color,
            ),
            items: [
              DropdownMenuItem(
                value: 1,
                child: customText(
                  context,
                  'USA',
                  Theme.of(context).textTheme.titleSmall!.color ??
                      Colors.orange,
                  15,
                  FontWeight.w200,
                ),
              ),
              DropdownMenuItem(
                value: 2,
                child: customText(
                  context,
                  'Nigeria',
                  Theme.of(context).textTheme.titleSmall!.color ??
                      Colors.orange,
                  15,
                  FontWeight.w200,
                ),
              ),
            ],
            onChanged: (e) {},
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              customText(
                context,
                'SamBitz Verified Offer',
                Theme.of(context).textTheme.titleSmall!.color ?? Colors.black,
                15,
                FontWeight.w600,
              ),
              ToggleButtons(
                selectedColor: Theme.of(context).primaryColor,
                isSelected: const [true, false],
                children: const [
                  Text('Yes'),
                  Text('No'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 25),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: whiteBody(context, 'find offer'),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    ),
  );
}
