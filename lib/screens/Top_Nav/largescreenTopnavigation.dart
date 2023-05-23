import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambitz/provider/loginProvider.dart';
import '../login/login.dart';
// import 'package:sambitz/screens/login/login.dart';

AppBar LStopNavigation(
  BuildContext context,
  WidgetRef ref,
  GlobalKey<ScaffoldState> key,
) =>
    AppBar(
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          top: 8.0,
          bottom: 8.0,
        ),
        child: Image.asset('assets/logo/logo.PNG'),
      ),
      title: Text('Sambitz'),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Make Offer',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const SizedBox(width: 30),
        TextButton(
          onPressed: () {},
          child: Text(
            'Wallet',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const SizedBox(width: 150),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                primary: Colors.white,
                onSurface: Theme.of(context).primaryColor,
                padding: const EdgeInsets.all(15.0)),
            // onPrimary: Theme.of(context).primaryColor),
            onPressed: () {
              final hmmmm = ref.watch(isLoginProvider.notifier).isLogin(true);
              Navigator.of(context).pushNamed(
                Login.route,
                arguments: true,
              );
            },
            icon: Image.asset('assets/icons/login_icon/icons8-login-64.png'),
            label: const Text('Login'),
          ),
        ),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              final hmmmm = ref.watch(isLoginProvider.notifier).isLogin(false);
              Navigator.pushNamed(
                context,
                Login.route,
                arguments: false,
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18,
            ),
            label: const Text('SignUp'),
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
