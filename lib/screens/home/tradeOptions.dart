import 'package:flutter/material.dart';
import '../../helpers/responsive.dart';
import '../../models/optionSale.dart';
import '../trade/tradepage.dart';
import '../../widgets/text.dart';
// import 'package:sambitz/helpers/responsive.dart';
// import 'package:sambitz/models/optionSale.dart';
// import 'package:sambitz/screens/trade/tradepage.dart';
// import 'package:sambitz/widgets/text.dart';

List TOptions = const [
  OptionSale(
    title: "Bank Transfer",
    icon: Icons.account_balance_rounded,
    desc:
        "Our guided steps to make bank transfer or deposit is even easier to sell Bitcoin and receive payment",
  ),
  OptionSale(
    title: "Cash Payment",
    icon: Icons.money_rounded,
    desc:
        "We accept payment via cash through our trusted agents via available kiosk at your locality",
  ),
  OptionSale(
    title: "Online Wallet",
    icon: Icons.wallet_rounded,
    desc:
        "You make a complete transaction using any of your online wallets that is active",
  ),
  OptionSale(
    title: "Discounted Gift Card",
    icon: Icons.wallet_giftcard_rounded,
    desc:
        "You can make trade with any of your available giftcard e.g Applecard",
  ),
];

class OptionsDisplay extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        orangeTitle(context, 'Multiple Channels to Buy and Sell BitCoin'),
        blackBody(
          context,
          'Explore our market place and start trading with your favouraite payment methods Discover something new',
        ),
        const SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, TradePage.route);
              },
              child: btnText(
                context,
                'Sell Bitcoin',
                Colors.white,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(12.0),
              //   child: Text('Sell Bitcoin',
              //       style: Theme.of(context).textTheme.titleSmall),
              // ),
            ),
            const SizedBox(width: 35),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(TradePage.route),
              child: btnText(
                context,
                'Buy Bitcoin',
                Colors.white,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(12.0),
              //   child: Text('Buy Bitcoin',
              //       style: Theme.of(context).textTheme.titleSmall),
              // ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent:
                ResponsiveWidget.isSmallScreen(context) ? 380 : 300,
            childAspectRatio:
                ResponsiveWidget.isSmallScreen(context) ? 2 / 1 : 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: TOptions.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      TOptions[index].icon,
                    ),
                    // T[index].icon,
                    customText(
                      context,
                      TOptions[index].title,
                      Theme.of(context).textTheme.titleSmall!.color ??
                          Colors.orange,
                      18,
                      FontWeight.w600,
                    ),
                    const SizedBox(height: 10),
                    blackBody(context, TOptions[index].desc)
                    // Text(
                    //   TOptions[index].desc,
                    //   style: Theme.of(context).textTheme.bodyMedium,
                    // )
                  ],
                ),
              ),
            );
          },
          // children: const [
          //   Text('Bank Transfer'),
          //   Text('Cash Payment'),
          //   Text('Online Wallet'),
          //   Text('Discounted Gift Card'),
          //   Text('Digital Currencies')
          // ],
        ),
        const SizedBox(height: 35),
        ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed(TradePage.route);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => TradePage(),
              //   ),
              // );
            },
            icon: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Theme.of(context).appBarTheme.iconTheme!.color ??
                    Colors.white,
                size: 20,
              ),
            ),
            label: Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: customText(
                  context,
                  'Start Trading',
                  Theme.of(context).textTheme.titleLarge!.color ?? Colors.white,
                  15,
                  FontWeight.w600),
            ))
      ],
    ); //Text('Ways to Buy and Sell Bitcoin');
  }
}
