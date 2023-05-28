import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/text.dart';

class HeadingDash extends StatelessWidget {
  var currentTime = DateTime.now();

  HeadingDash({super.key});

  String greetings() {
    if (currentTime.hour < 12) {
      return "Good Morning";
    } else if (currentTime.hour >= 12 && currentTime.hour < 16) {
      return "Good Afternoon";
    } else if (currentTime.hour >= 16 && currentTime.hour > 24) {
      return "Good Evening";
    } else {
      return "Good Day";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          // height: 350,
          width: 700,
          child: ListTile(
            leading: customText(
                context, greetings(), Colors.black, 28, FontWeight.normal),
            title: customText(
                context, 'JohnPaul', Colors.orange, 20, FontWeight.w600),
            subtitle: blackBody(context,
                'Latest updates on your profile, make more transactions'),
          ),
        ),
        const SizedBox(
          width: 150,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(Icons.search),
              hintText: 'Search',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: ElevatedButton(
            onPressed: () {},
            child: blackBody(
              context,
              'Search',
            ),
          ),
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              ),
            ),
            Positioned(
              left: 20,
              top: 5,
              child: Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  // border: Border.all(color: n),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: customText(
                    context,
                    '0',
                    Colors.white,
                    8,
                    FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
