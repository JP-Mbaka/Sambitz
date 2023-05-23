import 'package:flutter/material.dart';
import '../../helpers/responsive.dart';
import '../../models/financeSys.dart';
import '../../widgets/text.dart';
// import 'package:sambitz/helpers/responsive.dart';
// import 'package:sambitz/models/financeSys.dart';
// import 'package:sambitz/widgets/text.dart';

List T = const [
  FinanceSysModel(icon: Icons.monetization_on_outlined, title: 'Buy Bitcoin'),
  FinanceSysModel(icon: Icons.money_outlined, title: 'Sell Bitcoin'),
  FinanceSysModel(icon: Icons.security_outlined, title: 'Secure Trade'),
  FinanceSysModel(icon: Icons.feedback_outlined, title: 'Feedback'),
  FinanceSysModel(icon: Icons.wallet_outlined, title: 'Free Sambitz Wallet')
];

class FinanceSys extends StatelessWidget {
  const FinanceSys({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        orangeTitle(
          context,
          'Welcome to A Financial System',
        ),
        // Text(
        //   'Welcome to A Financial System',
        //   style: Theme.of(context).textTheme.displayMedium,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            blackBody(context, 'Where you are in full charge'),
            // Text(
            //   'Where you are in full charge',
            //   style: Theme.of(context).textTheme.bodyText2,
            // ),
            const SizedBox(width: 5),
            customText(
              context,
              '100%',
              Colors.red,
              15,
              FontWeight.bold,
            ),
            // const Text(
            //   '100%',
            //   style: TextStyle(
            //     color: Colors.red,
            //     fontWeight: FontWeight.bold,
            //   ),
            // )
          ],
        ),
        const SizedBox(height: 35),
        GridView.builder(
            padding: ResponsiveWidget.isLargeScreen(context)
                ? const EdgeInsets.only(left: 200)
                : const EdgeInsets.all(20),
            shrinkWrap: true,
            itemCount: T.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                // mainAxisExtent: 200,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 5 / 3),
            itemBuilder: (context, index) {
              return Card(
                color: Theme.of(context).primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      T[index].icon,
                      color: Theme.of(context).appBarTheme.iconTheme!.color,
                      size: Theme.of(context).iconTheme.size,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    blackBody(context, T[index].title),
                    // Text(
                    //   T[index].title,
                    // )
                  ],
                ),
              );
            }),
        const SizedBox(height: 50),
      ],
    );
  }
}
