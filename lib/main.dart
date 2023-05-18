import 'package:flutter/material.dart';
import './screens/home/homepage.dart';
import './screens/login/login.dart';
import './screens/trade/tradepage.dart';
// import 'package:sambitz/screens/home/homepage.dart';
// import 'package:sambitz/screens/login/login.dart';
// import 'package:sambitz/screens/trade/tradepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 24,
          ),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              titleMedium: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              titleSmall: const TextStyle(
                color: Colors.orange,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              displayMedium: const TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bodyLarge: const TextStyle(color: Colors.white),
              bodyMedium: const TextStyle(color: Colors.black),
              bodySmall: const TextStyle(color: Colors.orange),
            ),
        iconTheme: ThemeData.light().iconTheme.copyWith(
              size: 30,
              color: Colors.orange,
            ),
      ),
      // initialRoute: '/',
      routes: {
        HomePage.route: (context) => HomePage(),
        TradePage.route: (context) => TradePage(),
        Login.route: (context) => Login(),
      },
    );
  }
}
