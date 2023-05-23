import 'package:flutter/material.dart';
import 'package:sambitz/widgets/text.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  static const route = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // leading: Text('data'),
      //   leading: SizedBox(
      //     width: 300,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Image.asset('assets/logo/logo.PNG'),
      //         ),
      //         whiteTitle(context, 'SamBitz')
      //       ],
      //     ),
      //   ),
      //   title: SizedBox(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         whiteTitle(context, 'Welcome'),
      //         whiteTitle(context, 'JohnPaul'),
      //       ],
      //     ),
      //   ),
      //   actions: [Text('test'), Text('test')],
      //   // actions: const [
      //   //   TextField(
      //   //     style: TextStyle(color: Colors.white),
      //   //     decoration: InputDecoration(
      //   //         fillColor: Colors.white,
      //   //         prefixIcon: Icon(Icons.search),
      //   //         hintText: 'Search',
      //   //         border: OutlineInputBorder(borderSide: BorderSide())),
      //   //   ),
      //   // ],
      // ),
      body: Row(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Image.asset(
                          'assets/logo/logo.PNG',
                          width: 25,
                          height: 25,
                        ),
                        const Text('SamBitz'),
                      ],
                    )
                  ],
                )),
          ),
          Expanded(
              flex: 3,
              child: Center(
                child: Text('Body'),
              ))
        ],
      ),
    );
  }
}
