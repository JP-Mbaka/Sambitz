import 'package:flutter/material.dart';
import '../../widgets/text.dart';
// import 'package:sambitz/widgets/text.dart';

import '../home/tradeOptions.dart';
import 'rowTrade.dart';

Widget trades(BuildContext context) {
  return ListView(
    shrinkWrap: true,
    children: [
      SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 20),
            Center(
              child: blackTitle(
                context,
                'Sell BitCoin (BTC)',
              ),
            ),
            blackBody(
              context,
              'Sell your BitCoin and Make a successful transactions through the standard payment method, including bank transfers, online wallets, and gift cards',
            ),
            const SizedBox(
              height: 10,
            ),
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                mainAxisExtent: 50,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2,
              ),
              children: TOptions.map(
                (e) => Card(
                  elevation: 5,
                  color: Theme.of(context).primaryColor,
                  child: ListTile(
                    leading: Icon(
                      e.icon,
                      color: Theme.of(context).appBarTheme.iconTheme!.color,
                    ),
                    title: blackBody(context, e.title),
                  ),
                ), //Text(e.title),
              ).toList(),
            ),
          ],
        ),
      ),
      const SizedBox(height: 20),
      Container(
        padding: const EdgeInsets.all(15.0),
        // decoration: BoxDecoration(
        //   border:
        //       Border.all(color: Theme.of(context).primaryColor),
        // ),
        child: Column(
          children: [
            Center(
              child: orangeTitle(context, 'Trades'),
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            const RowTrade(
              userName: 'XuanTocDo',
              ratings: 5412,
              isVerified: true,
              totalEarns: 32946.72,
              discount: 14,
              isOnline: true,
              minSale: 100,
              currency: 'USD',
              modeOfPayment: [
                'Bank Transfer',
                'Online Wallet',
              ],
            ),
            const RowTrade(
              userName: 'XuanTocDo',
              ratings: 5412,
              isVerified: true,
              totalEarns: 32946.72,
              discount: 14,
              isOnline: true,
              minSale: 100,
              currency: 'USD',
              modeOfPayment: [
                'Bank Transfer',
                'Online Wallet',
              ],
            ),
            const RowTrade(
              userName: 'XuanTocDo',
              ratings: 5412,
              isVerified: true,
              totalEarns: 32946.72,
              discount: 14,
              isOnline: true,
              minSale: 100,
              currency: 'USD',
              modeOfPayment: [
                'Bank Transfer',
                'Online Wallet',
              ],
            ),
            const RowTrade(
              userName: 'XuanTocDo',
              ratings: 5412,
              isVerified: true,
              totalEarns: 32946.72,
              discount: 14,
              isOnline: true,
              minSale: 100,
              currency: 'USD',
              modeOfPayment: [
                'Bank Transfer',
                'Online Wallet',
              ],
            ),
            const RowTrade(
              userName: 'Joesph',
              ratings: 12,
              // isVerified: true,
              isOnline: true,
              isMaxSale: true,
              isMinSale: true,
              isDiscount: true,
              totalEarns: 346.72,
              discount: 1,
              // isOnline: true,
              minSale: 100,
              maxSale: 235,
              currency: 'NGR',
              modeOfPayment: [
                'Deposit',
                'Card Transfer',
              ],
            ),
            const RowTrade(
              userName: 'Michael',
              ratings: 23,
              isVerified: true,
              totalEarns: 1946.72,
              isOnline: true,
              isMaxSale: true,
              maxSale: 100,
              currency: 'Euro',
              modeOfPayment: [
                'Gift Card',
                'Amazon Card',
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
