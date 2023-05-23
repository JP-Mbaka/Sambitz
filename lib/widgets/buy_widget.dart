import 'package:flutter/material.dart';
import '../widgets/text.dart';
import '../screens/trade/tradepage.dart';
// import 'package:sambitz/screens/trade/tradepage.dart';
// import 'package:sambitz/widgets/text.dart';

// ignore: must_be_immutable
class Buy1 extends StatelessWidget {
  GlobalKey? formKey;

  // List<DropdownMenuItem<dynamic>>? T = [
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  //   DropdownMenuItem(
  //     child: Text('data'),
  //   ),
  // ];

  Buy1({this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: whiteTitle(context, 'Buy'),
                        // Text(
                        //   'Buy',
                        //   style: TextStyle(
                        //     color: Theme.of(context)
                        //         .appBarTheme
                        //         .titleTextStyle!
                        //         .color,
                        //   ),
                        // ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: whiteTitle(context, 'Sell'),
                        // Text(
                        //   'Sell',
                        //   style: TextStyle(
                        //     color: Theme.of(context)
                        //         .appBarTheme
                        //         .titleTextStyle!
                        //         .color,
                        //   ),
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
              // DropdownButton(items: T, onChanged: (e){ =T[e]}),
              TextFormField(),
              TextFormField(),
              TextField(),
              TextField(),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => TradePage(),
                      //   ),
                      // );
                      Navigator.pushNamed(context, TradePage.route);
                    },
                    child: btnText(
                      context,
                      'find offers',
                      Colors.white,
                    )
                    // Text(
                    //   'Find Offers',
                    //   style: TextStyle(
                    //     color:
                    //         Theme.of(context).appBarTheme.titleTextStyle!.color,
                    //   ),
                    // ),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Buy_2 extends StatelessWidget {
  GlobalKey? formKey;
  Buy_2({this.formKey});

  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Card(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              whiteTitle(context, 'Buy Coin from us'),
              // Text(
              //   'Buy coin from us',
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
              //     color: Theme.of(context).appBarTheme.titleTextStyle!.color,
              //   ),
              // ),
              TextField(),
              TextFormField(),
              TextField(),
              TextField(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:
                          Theme.of(context).appBarTheme.titleTextStyle!.color,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(TradePage.route);
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => TradePage(),
                      //   ),
                      // );
                    },
                    child: btnText(
                      context,
                      'find offers',
                      Theme.of(context).primaryColor,
                    )
                    //  Text(
                    //   'Find Offers',
                    //   style: TextStyle(
                    //     color: Theme.of(context).primaryColor,
                    //   ),
                    // ),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
