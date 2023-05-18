import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import '../login/login.dart';
import '../../widgets/text.dart';
// import 'package:sambitz/screens/login/login.dart';
// import 'package:sambitz/widgets/text.dart';

class QuickStar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        orangeTitle(context, 'Ready to get Started'),
        // Text(
        //   "Ready to get Started",
        //   style: Theme.of(context).textTheme.displayMedium,
        // ),
        blackBody(
          context,
          'Explore thousands of offers to buy and sell BitCoin and make suceesfull transaction',
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pushNamed(Login.route),
          child: btnText(
            context,
            'Create your account',
            Theme.of(context).textTheme.titleLarge!.color ?? Colors.white,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     'Create Your Account',
          //     style: Theme.of(context).appBarTheme.titleTextStyle,
          //   ),
          // ),
        ),
      ],
    );
  }
}
