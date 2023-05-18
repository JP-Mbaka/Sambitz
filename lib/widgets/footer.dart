import 'package:flutter/material.dart';
import '../widgets/text.dart';
// import 'package:sambitz/widgets/text.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                orangeTitle(context, 'SamBitz'),
                // Text(
                //   'SamBitz',
                //   style: Theme.of(context).appBarTheme.titleTextStyle,
                // ),
                ToggleButtons(
                  isSelected:const [true],
                  children: [
                    orangeBody(context, 'Dark Theme')
                    // Text(
                    //   'Dark Theme',
                    //   style: Theme.of(context).textTheme.bodySmall,
                    // )
                  ],
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  orangeBody(
                    context,
                    'For You',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Buy BitCoin',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Sell BitCoin',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'SamBitz Wallet',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'For You',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Bussiness Contacts',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Career',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'SamBitz Reviews',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Built with BitCoin',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Legal Terms',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  orangeBody(
                    context,
                    'For Your Business',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'SamBitz Pay',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'API Documentation',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  orangeBody(
                    context,
                    'Buy Anywhere',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Buy BitCoin in USA',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Buy BitCoin in Nigeria',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Buy BitCoin in China',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Buy BItCoin in UK',
                  ),
                  const SizedBox(height: 5),
                  orangeBody(
                    context,
                    'Buy BitCoin in India',
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: orangeBody(
                      context,
                      'App Store',
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    child: orangeBody(
                      context,
                      'Google Play Store',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  orangeBody(
                    context,
                    'Instagram',
                  ),
                  const SizedBox(width: 20),
                  orangeBody(
                    context,
                    'Twitter',
                  ),
                  const SizedBox(width: 20),
                  orangeBody(
                    context,
                    'Facebook',
                  ),
                  const SizedBox(width: 20),
                  orangeBody(
                    context,
                    'WhatsApp',
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.copyright_rounded, //alternate_email_rounded,
                  size: 18,
                ),
                Text(
                  DateTime.now().year.toString(),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'JAPAHub',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                Text(
                  'www.japahub.ai',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
