import 'package:flutter/material.dart';
import 'package:sambitz/widgets/text.dart';

class VerifiedRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 250,
          height: 120,
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                // bottom: 15.0,
                top: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blackTitle(context, 'Account Level: 1'),
                  customText(context, 'Account Limit: N756000', Colors.black,
                      18, FontWeight.normal),
                  const Icon(
                    Icons.question_mark,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 350,
          height: 120,
          child: Card(
            elevation: 5,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.mobile_off,
                    size: 35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        context,
                        'Phone Not Verified',
                        Colors.red,
                        25,
                        FontWeight.w400,
                      ),
                      blackBody(
                          context, 'Take a moment to verify your phone number'),
                      TextButton(
                        onPressed: () {},
                        child: orangeBody(context, 'Verify now'),
                      ),
                    ],
                  )
                ]),
          ),
        ),
        SizedBox(
          width: 350,
          height: 120,
          child: Card(
            elevation: 5,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.mobile_off,
                    size: 35,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        context,
                        'Email Not Verified',
                        Colors.red,
                        25,
                        FontWeight.w400,
                      ),
                      blackBody(
                          context, 'Take a moment to verify your email'),
                      TextButton(
                        onPressed: () {},
                        child: orangeBody(context, 'Verify now'),
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
