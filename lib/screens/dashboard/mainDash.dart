import 'package:flutter/material.dart';
import 'package:sambitz/screens/dashboard/dashSurf.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  static const route = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
      body: DashSurf(),
    );
  }
}
