import 'package:flutter/material.dart';
import '../../helpers/responsive.dart';
import '../../widgets/text.dart';
// import 'package:sambitz/helpers/responsive.dart';
// import 'package:sambitz/widgets/text.dart';

class RowTrade extends StatelessWidget {
  final String? userName, tradeType, currency;
  final int? ratings, discount;
  final double? totalEarns, minSale, maxSale;
  final List<String>? modeOfPayment;
  final bool isVerified,
      isOnline,
      isNewOffer,
      isMinSale,
      isMaxSale,
      isDiscount,
      isBuying;
  final DateTime? transactionDuration;

  const RowTrade({
    super.key,
    this.userName,
    this.ratings,
    this.modeOfPayment,
    this.isOnline = false,
    this.isVerified = false,
    this.isNewOffer = false,
    this.discount,
    this.totalEarns,
    this.isMinSale = false,
    this.isMaxSale = false,
    this.isDiscount = false,
    this.tradeType,
    this.transactionDuration,
    this.minSale,
    this.maxSale,
    this.currency,
    this.isBuying = false,
  });

  @override
  Widget build(BuildContext context) {
    String tradeMode = isBuying ? 'Buy' : 'Sell';
    return ResponsiveWidget.isSmallScreen(context)
        ? Card(
            margin: const EdgeInsets.only(bottom: 20),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      blackBody(context, userName!),
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_rounded,
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          orangeBody(
                            context,
                            ratings!.toString(),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  if (isVerified || isOnline)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if (isOnline)
                          Row(
                            children: [
                              const Icon(
                                Icons.online_prediction_outlined,
                                size: 20,
                              ),
                              blackBody(context, 'online')
                            ],
                          ),
                        if (isVerified)
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).primaryColor)),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.fmd_good_rounded,
                                  size: 20,
                                ),
                                blackBody(context, 'verified')
                              ],
                            ),
                          ),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: customText(context, 'Payment Methods:',
                              Colors.black, 15, FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: modeOfPayment!.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: blackBody(context, modeOfPayment![index]),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          customText(
                            context,
                            'Transaction Duration:',
                            Colors.black,
                            15,
                            FontWeight.w600,
                          ),
                          const SizedBox(width: 10),
                          orangeBody(context, '13 min')
                        ],
                      ),
                      if (isDiscount)
                        orangeBody(
                          context,
                          '$discount % discount',
                        )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          customText(
                            context,
                            'Balance:',
                            Colors.black,
                            15,
                            FontWeight.w600,
                          ),
                          const SizedBox(width: 5),
                          FittedBox(
                            clipBehavior: Clip.antiAlias,
                            child: orangeBody(
                              context,
                              totalEarns!.toString(),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // width: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor)),
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            blackBody(context, tradeMode),
                            const Icon(
                              Icons.currency_bitcoin_rounded,
                              size: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  if (isMinSale)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        blackBody(context, 'min sale'),
                        const SizedBox(width: 10),
                        customText(
                          context,
                          minSale!.toString(),
                          Theme.of(context).primaryColor,
                          15,
                          FontWeight.w600,
                        ),
                        blackBody(context, currency!)
                      ],
                    ),
                  if (isMaxSale)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        blackBody(context, 'max sale'),
                        const SizedBox(width: 10),
                        customText(
                          context,
                          maxSale!.toString(),
                          Theme.of(context).primaryColor,
                          15,
                          FontWeight.w600,
                        ),
                        Text(currency!),
                      ],
                    ),
                  if (!isMaxSale && !isMinSale)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        blackBody(context, 'availabe amount'),
                        const SizedBox(width: 10),
                        customText(
                          context,
                          minSale!.toString(),
                          Theme.of(context).primaryColor,
                          15,
                          FontWeight.w600,
                        ),
                        blackBody(context, currency!),
                      ],
                    ),
                ],
              ),
            ),
          )
        : SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          blackBody(context, userName!),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.thumb_up_alt_rounded,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color,
                                size: 20,
                              ),
                              const SizedBox(width: 5),
                              orangeBody(
                                context,
                                ratings!.toString(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  for (String i in modeOfPayment!)
                                    blackBody(context, i),
                                ],
                              ),
                              if (isVerified)
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Theme.of(context).primaryColor)),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.fmd_good_rounded,
                                        size: 20,
                                      ),
                                      blackBody(context, 'verified'),
                                    ],
                                  ),
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          orangeBody(context, '13 min'),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          blackBody(
                            context,
                            totalEarns!.toString(),
                          ),
                          const SizedBox(height: 10),
                          if (isDiscount)
                            orangeBody(context, '$discount % discount'),
                          if (isDiscount) const SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.05,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).primaryColor)),
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                blackBody(context, tradeMode),
                                const Icon(
                                  Icons.currency_bitcoin_rounded,
                                  size: 20,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (isOnline)
                      Row(
                        children: [
                          const Icon(
                            Icons.online_prediction_outlined,
                            size: 20,
                          ),
                          blackBody(context, 'Online'),
                        ],
                      ),
                    if (isMinSale)
                      Row(
                        children: [
                          blackBody(context, 'min sale'),
                          const SizedBox(width: 10),
                          customText(
                            context,
                            minSale!.toString(),
                            Theme.of(context).primaryColor,
                            15,
                            FontWeight.w600,
                          ),
                          blackBody(context, currency!)
                        ],
                      ),
                    if (isMaxSale)
                      Row(
                        children: [
                          blackBody(context, 'Max Sale'),
                          const SizedBox(width: 10),
                          customText(
                            context,
                            maxSale!.toString(),
                            Theme.of(context).primaryColor,
                            15,
                            FontWeight.w600,
                          ),
                          blackBody(context, currency!)
                        ],
                      ),
                    if (!isMaxSale && !isMinSale)
                      Row(
                        children: [
                          const Text('Available Amount'),
                          const SizedBox(width: 10),
                          customText(
                            context,
                            minSale!.toString(),
                            Theme.of(context).primaryColor,
                            15,
                            FontWeight.w600,
                          ),
                          blackBody(context, currency!),
                        ],
                      )
                  ],
                ),
                const Divider()
              ],
            ),
          );
  }
}
